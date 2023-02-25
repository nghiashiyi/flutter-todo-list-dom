import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';

abstract class TaskLocalDatasource {
  Future<bool> createTask({required Todo todo});

  Future<bool> deleteTask({required String id});

  Future<Todo> updateTask({
    String? title,
    String? content,
    int? priority,
    required String id,
  });
}

class TaskLocalDatasourceImpl implements TaskLocalDatasource {
  @override
  Future<bool> createTask({required Todo todo}) async {
    // TODO: implement createTask
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteTask({required String id}) async {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<Todo> updateTask(
      {String? title,
      String? content,
      int? priority,
      required String id}) async {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
