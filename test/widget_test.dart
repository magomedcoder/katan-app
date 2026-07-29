import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:katan/app/app.dart';
import 'package:katan/app/di.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await getIt.reset();
    await configureDependencies();
  });

  testWidgets('shows login form', (tester) async {
    await tester.pumpWidget(const KatanApp());
    // Session bootstrap may wait on secure storage timeout in tests.
    await tester.pump(const Duration(seconds: 1));
    await tester.pump();

    expect(find.text('Войти'), findsOneWidget);
    expect(find.text('Хост'), findsOneWidget);
    expect(find.text('Логин'), findsOneWidget);
    expect(find.text('Пароль'), findsOneWidget);
  });
}
