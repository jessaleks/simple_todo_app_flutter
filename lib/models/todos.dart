import 'package:mobx/mobx.dart';

import 'todo.dart';

part 'todos.g.dart';

class Todos = _Todos with $_Todos;

abstract class _Todos with Store {
  @observable
  List<Todo>? todos;

  @action
  void someAction() {
    throw Error();
  }
}
