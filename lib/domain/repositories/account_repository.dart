import 'package:katan/domain/entities/account.dart';

abstract class AccountRepository {
  Future<Account> getAccount();
}
