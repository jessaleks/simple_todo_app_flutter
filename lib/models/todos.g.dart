// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todos on _Todos, Store {
  final _$todosAtom = Atom(name: '_Todos.todos');

  @override
  List<Todo>? get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<Todo>? value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$_TodosActionController = ActionController(name: '_Todos');

  @override
  void someAction() {
    final _$actionInfo =
        _$_TodosActionController.startAction(name: '_Todos.someAction');
    try {
      return super.someAction();
    } finally {
      _$_TodosActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos}
    ''';
  }
}
