import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:login/app/app_module.dart';
import 'package:login/app/modules/home/home_controller.dart';
import 'package:login/app/modules/home/home_module.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_mock.dart';
import 'package:login/app/shared/repositories/localstorage/local_storage_share.dart';

main() {
  final storageMock = LocalStorageMock();
  initModule(AppModule(), replaceBinds: [
    Bind.instance<ILocalStorage>(storageMock),
  ]);
  initModule(HomeModule());

  test('click save', () async {
    final HomeController controller = Modular.get();
    controller.textController.text = 'jacob';
    controller.save();
    expect(controller.list.length, 1);
    expect(controller.list[0], 'jacob');

    List<String> listStorage = await Modular.get<ILocalStorage>().get('list');
    expect(listStorage[0], 'jacob');
  });

  test('click remove', () async {
    final HomeController controller = Modular.get();
    controller.textController.text = 'jacob';
    controller.save();

    controller.remove(0);
    expect(controller.list.length, 0);
    List<String> listStorage = await Modular.get<ILocalStorage>().get('list');
    expect(listStorage.isEmpty, true);
  });
}
