// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on _AuthControllerBase, Store {
  final _$statusAtom = Atom(name: '_AuthControllerBase.status');

  @override
  AuthStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(AuthStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$userAtom = Atom(name: '_AuthControllerBase.user');

  @override
  FirebaseUser get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(FirebaseUser value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$loginWithGoogleAsyncAction = AsyncAction('loginWithGoogle');

  @override
  Future<dynamic> loginWithGoogle() {
    return _$loginWithGoogleAsyncAction.run(() => super.loginWithGoogle());
  }

  final _$_AuthControllerBaseActionController =
      ActionController(name: '_AuthControllerBase');

  @override
  dynamic setUser(FirebaseUser value) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction();
    try {
      return super.setUser(value);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
