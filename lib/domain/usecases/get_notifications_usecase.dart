import 'package:katan/domain/entities/app_notification.dart';
import 'package:katan/domain/repositories/account_repository.dart';

class GetNotificationsUseCase {
  const GetNotificationsUseCase(this._repository);

  final AccountRepository _repository;

  Future<AppNotificationsPage> call() => _repository.getNotifications();
}
