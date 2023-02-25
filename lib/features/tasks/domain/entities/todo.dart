import 'package:equatable/equatable.dart';
import 'package:flutter_todo_list_dom/features/tasks/data/models/todo_model.dart';

class Todo extends Equatable {
  final String id;
  final String title;
  final String? content;
  final int priority;
  final bool isCompleted;
  final DateTime createdAt;

  const Todo({
    required this.id,
    required this.title,
    this.content,
    required this.priority,
    required this.isCompleted,
    required this.createdAt,
  });

  Todo.initialize({required this.title, this.content, required this.priority})
      : isCompleted = false,
        createdAt = DateTime.now(),
        id = "${DateTime.now().millisecondsSinceEpoch}";

  Todo copyWith({
    final String? id,
    final String? title,
    final String? content,
    final int? priority,
    final bool? isCompleted,
    final DateTime? createdAt,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      priority: priority ?? this.priority,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  TodoModel toModel() {
    return TodoModel(
        id: id,
        title: title,
        content: content,
        priority: priority,
        isCompleted: isCompleted,
        createdAt: createdAt);
  }

  @override
  List<Object?> get props => [
        id,
        title,
        content,
        priority,
        isCompleted,
      ];
}
