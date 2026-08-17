import 'package:katan/data/data_sources/remote/account_remote_datasource.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/app_notification.dart';
import 'package:katan/domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._remote);

  final AccountRemoteDataSource _remote;

  @override
  Future<Account> getAccount() => _remote.getAccount();

  @override
  Future<AppNotificationsPage> getNotifications() => _remote.getNotifications();

  @override
  Future<void> markNotificationRead(int id) => _remote.markNotificationRead(id);

  @override
  Future<void> markAllNotificationsRead() => _remote.markAllNotificationsRead();
}
