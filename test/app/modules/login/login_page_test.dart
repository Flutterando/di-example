import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:login/app/modules/login/login_page.dart';

//TODO: Mock Login Controller to passthrough it
main() {
  testWidgets('LoginPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LoginPage(title: 'Login')));
    final titleFinder = find.text('Login');
    expect(titleFinder, findsOneWidget);
  });
}
