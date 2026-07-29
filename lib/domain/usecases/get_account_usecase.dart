import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/repositories/account_repository.dart';

class GetAccountUseCase {
  const GetAccountUseCase(this._repository);

  final AccountRepository _repository;

  Future<Account> call() => _repository.getAccount();
}
