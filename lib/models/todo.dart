import 'package:uuid/uuid.dart';

String generateUUID() {
  const uuid = Uuid();
  return uuid.v4();
}

class Todo {
  Todo({
    required this.name,
    required this.isComplete,
    required this.updatedAt,
    this.description,
  });

  final String id = generateUUID();

  String name;

  bool isComplete = false;

  String? description;

  final DateTime createdAt = DateTime.now().toUtc();

  DateTime updatedAt = DateTime.now().toUtc();
}
