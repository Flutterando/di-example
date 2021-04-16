import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/item/item_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.highlight_off), onPressed: controller.logoff),
        title: TextField(
          controller: controller.textController,
        ),
        actions: <Widget>[
          Observer(builder: (_) {
            return IconButton(
              icon: Icon(Icons.add),
              onPressed: controller.disableAdd ? null : controller.save,
            );
          }),
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (_, index) {
            return ItemWidget(
              index: index,
            );
          },
        );
      }),
    );
  }
}
