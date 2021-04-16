import 'package:login/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:login/app/modules/home/home_page.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_share.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) {
          return HomeController();
        }),
      ];

  @override
  List<ModularRoute> get routers => [
        ChildRoute('/', child: (_, args) => HomePage()),
      ];
}
