import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:login/app/shared/auth/auth_controller.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final ILocalStorage storage = Modular.get();

  final textController = TextEditingController();

  @observable
  bool disableAdd = true;

  @observable
  ObservableList<String> list = <String>[].asObservable();

  _HomeBase() {
    init();
    textController.addListener(() {
      disableAdd = textController.text == null ||
          textController.text.isEmpty ||
          textController.text.length < 3;
    });
  }

  @action
  init() async {
    List<String> listLocal = await storage.get('list');
    if (listLocal == null) {
      list = <String>[].asObservable();
    } else {
      list = listLocal.asObservable();
    }
  }

  @action
  void save() {
    list.add(textController.text);
    storage.put('list', list);
    textController.clear();
  }

  @action
  void remove(int index) {
    list.removeAt(index);
    storage.put('list', list);
  }

  logoff() async {
    await Modular.get<AuthController>().logout();
    Modular.to.pushReplacementNamed('/login');
  }
}
