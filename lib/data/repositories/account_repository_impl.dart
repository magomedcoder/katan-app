import 'package:katan/data/data_sources/remote/account_remote_datasource.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._remote);

  final AccountRemoteDataSource _remote;

  @override
  Future<Account> getAccount() => _remote.getAccount();
}
