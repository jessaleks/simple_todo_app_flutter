import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'todo.g.dart';

String generateUUID() {
  const uuid = Uuid();
  return uuid.v4();
}

@HiveType(typeId: 0)
class Todo extends HiveObject {
  Todo({
    required this.name,
    required this.isComplete,
    required this.updatedAt,
    this.description,
  });

  @HiveField(0)
  final String id = generateUUID();

  @HiveField(1)
  String name;

  @HiveField(2)
  bool isComplete = false;

  @HiveField(3)
  String? description;

  @HiveField(4)
  final DateTime createdAt = DateTime.now().toUtc();

  @HiveField(5)
  DateTime updatedAt = DateTime.now().toUtc();
}
