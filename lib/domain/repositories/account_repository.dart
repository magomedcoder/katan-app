import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/app_notification.dart';

abstract class AccountRepository {
  Future<Account> getAccount();

  Future<AppNotificationsPage> getNotifications();

  Future<void> markNotificationRead(int id);

  Future<void> markAllNotificationsRead();
}
