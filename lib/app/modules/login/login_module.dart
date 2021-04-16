import 'package:login/app/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_controller.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routers => [
        ChildRoute('/', child: (_, args) => LoginPage(title: "Login")),
      ];
}
