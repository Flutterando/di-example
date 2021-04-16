import 'package:login/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:login/app/app_widget.dart';
import 'package:login/app/modules/home/home_module.dart';
import 'package:login/app/shared/auth/auth_controller.dart';
import 'package:login/app/shared/auth/repositories/auth_repository.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_hive.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_share.dart';

import 'modules/login/login_module.dart';
import 'shared/auth/repositories/auth_repository_interface.dart';
import 'splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        //  Bind((i) => LocalStorageHive()),
        Bind<ILocalStorage>((i) => LocalStorageShared()),
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<ModularRoute> get routers => [
        ChildRoute('/', child: (_, args) => SplashPage()),
        ModuleRoute('/login',
            module: LoginModule(), transition: TransitionType.noTransition),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
