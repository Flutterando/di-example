import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../home_controller.dart';

class ItemWidget extends StatelessWidget {
  final int index;

  final HomeController controller = Modular.get();

  ItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(controller.list[index]),
      trailing: IconButton(
        icon: Icon(Icons.cancel, color: Colors.red),
        onPressed: () {
          controller.remove(index);
        },
      ),
    );
  }
}
