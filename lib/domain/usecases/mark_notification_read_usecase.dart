import 'package:katan/domain/repositories/account_repository.dart';

class MarkNotificationReadUseCase {
  const MarkNotificationReadUseCase(this._repository);

  final AccountRepository _repository;

  Future<void> call(int id) => _repository.markNotificationRead(id);
}
