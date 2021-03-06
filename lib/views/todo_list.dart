import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // ignore: unused_field
  final List<Todo> todos = <Todo>[];

  String title = "Todo App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // ignore: prefer_is_empty
      body: Expanded(
          child: Column(
        children: [
          _buildTodoList(),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _displayAddTodoDialog(context),
          tooltip: 'Add a Todo',
          child: const Icon(Icons.add)),
    );
  }

  Widget _buildTodoList() {
    return ValueListenableBuilder(
      valueListenable: Hive.box<Todo>("testBox").listenable(),
      builder: (context, Box<Todo> box, _) => ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) => _buildTodoTile(todos[index])),
    );
  }

  Widget _buildTodoTile(Todo todo) {
    return ListTile(
        key: Key(todo.id),
        leading: Checkbox(onChanged: (selected) {}, value: todo.isComplete),
        title: Text(todo.name));
  }

  // Come up with a way to create a dialogue
  void _displayAddTodoDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => (AlertDialog(
              content: Form(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(),
                  )
                ],
              )),
            )));
  }
}
