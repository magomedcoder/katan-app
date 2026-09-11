import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/usecases/create_direct_chat_usecase.dart';
import 'package:katan/domain/usecases/create_group_chat_usecase.dart';
import 'package:katan/domain/usecases/get_account_usecase.dart';
import 'package:katan/domain/usecases/get_chat_unread_counts_usecase.dart';
import 'package:katan/domain/usecases/get_notifications_usecase.dart';
import 'package:katan/domain/usecases/leave_chat_room_usecase.dart';
import 'package:katan/domain/usecases/list_chat_rooms_usecase.dart';
import 'package:katan/domain/usecases/mark_all_notifications_read_usecase.dart';
import 'package:katan/domain/usecases/mark_notification_read_usecase.dart';
import 'package:katan/domain/usecases/search_chat_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/chat_rooms_cubit.dart';
import 'package:katan/presentation/cubit/home_cubit.dart';
import 'package:katan/presentation/cubit/notifications_cubit.dart';
import 'package:katan/presentation/screens/ai_chat/ai_chat_screen.dart';
import 'package:katan/presentation/screens/ar/ar_session_screen.dart';
import 'package:katan/presentation/screens/chat/chat_room_screen.dart';
import 'package:katan/presentation/screens/chat/chat_rooms_screen.dart';
import 'package:katan/presentation/screens/notifications/notifications_screen.dart';
import 'package:katan/presentation/screens/profile/profile_screen.dart';
import 'package:katan/presentation/screens/work/work_screen.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class HomeShell extends StatelessWidget {
  const HomeShell({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        getAccountUseCase: getIt<GetAccountUseCase>(),
        authCubit: context.read<AuthCubit>(),
      )..load(),
      child: const _HomeShellView(),
    );
  }
}

class _HomeShellView extends StatelessWidget {
  const _HomeShellView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return switch (state) {
          HomeInitial() || HomeLoading() => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          HomeFailure(:final message) => Scaffold(
            body: ErrorView(
              message: message,
              onRetry: () => context.read<HomeCubit>().load(),
            ),
          ),
          HomeLoaded(:final account) => BlocProvider(
            create: (context) => NotificationsCubit(
              getNotificationsUseCase: getIt<GetNotificationsUseCase>(),
              markNotificationReadUseCase: getIt<MarkNotificationReadUseCase>(),
              markAllNotificationsReadUseCase: getIt<MarkAllNotificationsReadUseCase>(),
              authCubit: context.read<AuthCubit>(),
            )..load(),
            child: account.canReadChat
              ? _ChatRealtimeHost(
                child: BlocProvider(
                  create: (context) => ChatRoomsCubit(
                    listRoomsUseCase: getIt<ListChatRoomsUseCase>(),
                    getUnreadCountsUseCase: getIt<GetChatUnreadCountsUseCase>(),
                    searchChatUseCase: getIt<SearchChatUseCase>(),
                    createDirectUseCase: getIt<CreateDirectChatUseCase>(),
                    createGroupUseCase: getIt<CreateGroupChatUseCase>(),
                    leaveRoomUseCase: getIt<LeaveChatRoomUseCase>(),
                    realtime: getIt<AccountRealtimeService>(),
                    authCubit: context.read<AuthCubit>(),
                  )..load(),
                  child: _HomeTabs(account: account, showChat: true),
                ),
              )
              : _HomeTabs(account: account, showChat: false),
          ),
        };
      },
    );
  }
}

class _ChatRealtimeHost extends StatefulWidget {
  const _ChatRealtimeHost({required this.child});

  final Widget child;

  @override
  State<_ChatRealtimeHost> createState() => _ChatRealtimeHostState();
}

class _ChatRealtimeHostState extends State<_ChatRealtimeHost> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    getIt<AccountRealtimeService>().start();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(getIt<AccountRealtimeService>().stop());
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(getIt<AccountRealtimeService>().reconnect());
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class _HomeTabs extends StatefulWidget {
  const _HomeTabs({
    required this.account,
    required this.showChat,
  });

  final Account account;
  final bool showChat;

  @override
  State<_HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<_HomeTabs> {
  int _index = 0;
  StreamSubscription<ChatEvent>? _chatBannerSub;

  @override
  void initState() {
    super.initState();
    if (widget.showChat) {
      _chatBannerSub = getIt<AccountRealtimeService>().chatEvents.listen(_onChatBanner);
    }
  }

  @override
  void dispose() {
    unawaited(_chatBannerSub?.cancel());
    super.dispose();
  }

  void _onChatBanner(ChatEvent event) {
    if (event.kind != ChatEventKind.message || event.message == null) {
      return;
    }

    final message = event.message!;
    final activeRoomId = getIt<AccountRealtimeService>().activeRoomId;
    if (activeRoomId != null && activeRoomId == message.roomId) {
      return;
    }

    if (!mounted) {
      return;
    }

    final author = message.author?.displayName.trim();
    final body = message.body.trim().isEmpty ? 'Медиа' : message.body.trim();
    final text = [
      if (author != null && author.isNotEmpty) author,
      body,
    ].join(': ');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, maxLines: 2, overflow: TextOverflow.ellipsis),
        action: SnackBarAction(
          label: 'Открыть',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => ChatRoomScreen(
                  roomId: message.roomId,
                  currentUsername: widget.account.username,
                  canWrite: widget.account.canWriteChat,
                  canManage: widget.account.canManageChat,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<_HomeTab> _tabsFor({required bool arActive}) {
    return [
      _HomeTab(
        label: 'Задачи',
        icon: Icons.task_alt_outlined,
        selectedIcon: Icons.task_alt,
        child: WorkScreen(canWriteTask: widget.account.canWriteTask),
      ),
      if (widget.account.arAllowedKinds.isNotEmpty)
        _HomeTab(
          label: 'AR',
          icon: Icons.view_in_ar_outlined,
          selectedIcon: Icons.view_in_ar,
          child: ArSessionScreen(
            key: const ValueKey('ar-session'),
            account: widget.account,
            isActive: arActive,
          ),
        ),
      const _HomeTab(
        label: 'Уведомления',
        icon: Icons.notifications_outlined,
        selectedIcon: Icons.notifications,
        child: NotificationsScreen(),
      ),
      if (widget.showChat)
        _HomeTab(
          label: 'Чат',
          icon: Icons.forum_outlined,
          selectedIcon: Icons.forum,
          child: ChatRoomsScreen(account: widget.account),
        ),
      const _HomeTab(
        label: 'AI-чат',
        icon: Icons.smart_toy_outlined,
        selectedIcon: Icons.smart_toy,
        child: AiChatScreen(),
      ),
      const _HomeTab(
        label: 'Профиль',
        icon: Icons.person_outline,
        selectedIcon: Icons.person,
        child: ProfileScreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final tabsPreview = _tabsFor(arActive: false);
    final index = _index.clamp(0, tabsPreview.length - 1);
    final arActive = tabsPreview[index].label == 'AR';
    final tabs = _tabsFor(arActive: arActive);

    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [for (final tab in tabs) tab.child],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => _index = value),
        destinations: [
          for (final tab in tabs)
            NavigationDestination(
              icon: _tabIcon(tab, selected: false),
              selectedIcon: _tabIcon(tab, selected: true),
              label: tab.label,
            ),
        ],
      ),
    );
  }

  Widget _tabIcon(_HomeTab tab, {required bool selected}) {
    return switch (tab.label) {
      'Чат' => _ChatTabIcon(selected: selected),
      'Уведомления' => _NotificationsTabIcon(selected: selected),
      _ => Icon(selected ? tab.selectedIcon : tab.icon),
    };
  }
}

class _HomeTab {
  const _HomeTab({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.child,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final Widget child;
}

class _ChatTabIcon extends StatelessWidget {
  const _ChatTabIcon({required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final icon = Icon(selected ? Icons.forum : Icons.forum_outlined);

    return BlocBuilder<ChatRoomsCubit, ChatRoomsState>(
      builder: (context, state) {
        final unread = state is ChatRoomsLoaded ? state.unreadTotal : 0;
        return Badge(
          isLabelVisible: unread > 0,
          label: Text(unread > 99 ? '99+' : '$unread'),
          child: icon,
        );
      },
    );
  }
}

class _NotificationsTabIcon extends StatelessWidget {
  const _NotificationsTabIcon({required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final icon = Icon(selected ? Icons.notifications : Icons.notifications_outlined);

    return BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state) {
        final unread = state is NotificationsLoaded ? state.unreadCount : 0;
        return Badge(
          isLabelVisible: unread > 0,
          label: Text(unread > 99 ? '99+' : '$unread'),
          child: icon,
        );
      },
    );
  }
}
