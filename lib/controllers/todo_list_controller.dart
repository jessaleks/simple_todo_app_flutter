import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../models/todo.dart';

class TodoListController extends ChangeNotifier {
  final String _dbKey = 'todoList';
  Box<dynamic> _db;
  List<Todo> _todoList = [];

  TodoListController(this._db) {}
}
