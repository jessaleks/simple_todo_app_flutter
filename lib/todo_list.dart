import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  final List<Todo> todos = <Todo>[];

  String title = "Todo App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // ignore: prefer_is_empty
      body: Expanded(child: _buildTodoList()),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _displayAddTodoDialog(context),
          tooltip: 'Add a Todo',
          child: const Icon(Icons.add)),
    );
  }

  Widget _buildTodoList() {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => _buildTodoTile(todos[index]));
  }

  Widget _buildTodoTile(Todo todo) {
    return ListTile(
        key: Key(todo.id),
        leading: Checkbox(onChanged: (selected) {}, value: todo.isComplete),
        title: Text(todo.name));
  }

  // Come up with a way to create a dialogue
  void _displayAddTodoDialog(BuildContext context) {
    if (Platform.isIOS) {
      showCupertinoDialog(
          context: context,
          builder: (context) {
            throw Exception();
          });
    }
    showDialog(
        context: context,
        builder: (context) => (Expanded(
                child: AlertDialog(
              content: Form(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(),
                  )
                ],
              )),
            ))));
  }
}
