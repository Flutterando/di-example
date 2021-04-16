import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:login/app/shared/auth/auth_controller.dart';
import 'package:mockito/mockito.dart';
import 'package:login/app/modules/login/login_controller.dart';
import 'package:login/app/modules/login/login_module.dart';

//TODO: Mock auth to pasthrough it
void main() {
  initModule(LoginModule());
  late LoginController login;

  setUp(() {
    login = Modular.get<LoginController>();
  });

  group('LoginController Test', () {
    test("First Test", () {
      expect(login, isInstanceOf<LoginController>());
    });

    // test("Set Value", () {
    //   expect(login.value, equals(0));
    //   login.increment();
    //   expect(login.value, equals(1));
    // });
  });
}
