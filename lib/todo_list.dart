import 'package:flutter/material.dart';
import 'package:todo_app_flutter/todo_list_item.dart';
import './models/todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // ignore: unused_field
  final TextEditingController _textEditingController = TextEditingController();
  // ignore: unused_field
  final List<Todo> _todos = <Todo>[];

  void _displayADialog() {}

  String title = "Todo App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // ignore: prefer_is_empty
      body: _todos.length > 0
          ? ListView(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              children: const [
                  TodoListItem(),
                  TodoListItem(),
                ])
          : const Center(
              child: Text("It's a bit empty here, is it not?"),
            ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _displayADialog(),
          tooltip: 'Add a Todo',
          child: const Icon(Icons.add)),
    );
  }
}
