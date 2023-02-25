import 'package:flutter_todo_list_dom/features/tasks/data/models/todo_model.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:hive/hive.dart';

abstract class TaskLocalDatasource {
  Future<bool> createTask({required Todo todo});

  Future<bool> deleteTask({required String id});

  Future<List<Todo>> getTasks();

  Future<Todo> updateTask({
    String? title,
    String? content,
    int? priority,
    required String id,
  });
}

class TaskLocalDatasourceImpl implements TaskLocalDatasource {
  final Box<TodoModel> taskBox;

  TaskLocalDatasourceImpl({required this.taskBox});

  @override
  Future<bool> createTask({required Todo todo}) async {
    await taskBox.put(todo.id, todo.toModel());
    return true;
  }

  @override
  Future<bool> deleteTask({required String id}) async {
    await taskBox.delete(id);
    return true;
  }

  @override
  Future<Todo> updateTask(
      {String? title,
      String? content,
      int? priority,
      required String id}) async {
    final todo = taskBox.get(id);
    if (todo == null) {
      throw Exception("Can not find todo with id $id");
    }
    final updatedTodo = todo.copyWith(
      title: title,
      content: content,
      priority: priority,
    );
    await taskBox.put(todo.id, updatedTodo.toModel());
    return updatedTodo;
  }

  @override
  Future<List<Todo>> getTasks() async {
    final tasks = taskBox.keys
        .map((key) => taskBox.get(key))
        .where((record) => record != null)
        .map((record) => record!)
        .toList();
    return tasks;
  }
}
