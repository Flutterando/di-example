// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$disableAddAtom = Atom(name: '_HomeBase.disableAdd');

  @override
  bool get disableAdd {
    _$disableAddAtom.reportRead();
    return super.disableAdd;
  }

  @override
  set disableAdd(bool value) {
    _$disableAddAtom.reportWrite(value, super.disableAdd, () {
      super.disableAdd = value;
    });
  }

  final _$listAtom = Atom(name: '_HomeBase.list');

  @override
  ObservableList<String> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<String> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_HomeBase.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void save() {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.save');
    try {
      return super.save();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.remove');
    try {
      return super.remove(index);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
disableAdd: ${disableAdd},
list: ${list}
    ''';
  }
}
