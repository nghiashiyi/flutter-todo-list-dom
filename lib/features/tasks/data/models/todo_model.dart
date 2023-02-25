import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel extends Todo with HiveObjectMixin {
  @HiveField(0)
  @override
  final String id;
  @HiveField(1)
  @override
  final String title;
  @HiveField(2)
  @override
  final String? content;
  @HiveField(3)
  @override
  final int priority;
  @HiveField(4)
  @override
  final bool isCompleted;
  @HiveField(5)
  @override
  final DateTime createdAt;

  TodoModel({
    required this.id,
    required this.title,
    this.content,
    required this.priority,
    required this.isCompleted,
    required this.createdAt,
  }) : super(
            id: id,
            title: title,
            content: content,
            priority: priority,
            isCompleted: isCompleted,
            createdAt: createdAt);
}
