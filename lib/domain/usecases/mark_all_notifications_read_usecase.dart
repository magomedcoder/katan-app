import 'package:katan/domain/repositories/account_repository.dart';

class MarkAllNotificationsReadUseCase {
  const MarkAllNotificationsReadUseCase(this._repository);

  final AccountRepository _repository;

  Future<void> call() => _repository.markAllNotificationsRead();
}
