import 'package:uuid/uuid.dart';

String generateUUID() {
  const uuid = Uuid();
  return uuid.v4();
}

class Todo {
  Todo({
    required this.name,
    required this.isComplete,
    this.description,
  });

  final String id = generateUUID();
  final String name;
  bool isComplete;
  String? description;
  DateTime createdAt = DateTime.now();
}
