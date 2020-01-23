// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spash_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SpashController on _SpashBase, Store {
  final _$uidAtom = Atom(name: '_SpashBase.uid');

  @override
  String get uid {
    _$uidAtom.context.enforceReadPolicy(_$uidAtom);
    _$uidAtom.reportObserved();
    return super.uid;
  }

  @override
  set uid(String value) {
    _$uidAtom.context.conditionallyRunInAction(() {
      super.uid = value;
      _$uidAtom.reportChanged();
    }, _$uidAtom, name: '${_$uidAtom.name}_set');
  }

  final _$getUidAsyncAction = AsyncAction('getUid');

  @override
  Future getUid() {
    return _$getUidAsyncAction.run(() => super.getUid());
  }
}
