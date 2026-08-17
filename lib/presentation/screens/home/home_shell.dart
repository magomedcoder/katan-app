import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/usecases/get_account_usecase.dart';
import 'package:katan/domain/usecases/get_chat_unread_counts_usecase.dart';
import 'package:katan/domain/usecases/list_chat_rooms_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/chat_rooms_cubit.dart';
import 'package:katan/presentation/cubit/home_cubit.dart';
import 'package:katan/presentation/screens/ai_chat/ai_chat_screen.dart';
import 'package:katan/presentation/screens/chat/chat_rooms_screen.dart';
import 'package:katan/presentation/screens/profile/profile_screen.dart';
import 'package:katan/presentation/screens/projects/projects_screen.dart';
import 'package:katan/presentation/screens/tasks/tasks_screen.dart';
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
          HomeLoaded(:final account) => account.canReadChat
            ? BlocProvider(
              create: (context) => ChatRoomsCubit(
                listRoomsUseCase: getIt<ListChatRoomsUseCase>(),
                getUnreadCountsUseCase: getIt<GetChatUnreadCountsUseCase>(),
                authCubit: context.read<AuthCubit>(),
              )..load(),
              child: _HomeTabs(account: account, showChat: true),
            )
            : _HomeTabs(account: account, showChat: false),
        };
      },
    );
  }
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

  List<_HomeTab> get _tabs {
    return [
      const _HomeTab(
        label: 'Задачи',
        icon: Icons.task_alt_outlined,
        selectedIcon: Icons.task_alt,
        child: TasksScreen(),
      ),
      const _HomeTab(
        label: 'Проекты',
        icon: Icons.folder_outlined,
        selectedIcon: Icons.folder,
        child: ProjectsScreen(),
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
    final tabs = _tabs;
    final index = _index.clamp(0, tabs.length - 1);

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
              icon: tab.label == 'Чат' ? _ChatTabIcon(selected: false) : Icon(tab.icon),
              selectedIcon: tab.label == 'Чат' ? _ChatTabIcon(selected: true) : Icon(tab.selectedIcon),
              label: tab.label,
            ),
        ],
      ),
    );
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
