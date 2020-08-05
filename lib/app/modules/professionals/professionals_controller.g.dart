// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professionals_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfessionalsController on _ProfessionalsControllerBase, Store {
  final _$valueAtom = Atom(name: '_ProfessionalsControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ProfessionalsControllerBaseActionController =
      ActionController(name: '_ProfessionalsControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ProfessionalsControllerBaseActionController
        .startAction(name: '_ProfessionalsControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ProfessionalsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
