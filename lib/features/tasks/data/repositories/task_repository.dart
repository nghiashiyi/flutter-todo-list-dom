import 'package:dartz/dartz.dart';
import 'package:flutter_todo_list_dom/core/errors/failure.dart';
import 'package:flutter_todo_list_dom/features/tasks/data/data_sources/task_local_datasource.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/entities/todo.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskLocalDatasource taskLocalDatasource;

  TaskRepositoryImpl({required this.taskLocalDatasource});

  @override
  Future<Either<Failure, Todo>> createTask({
    required String title,
    String? content,
    required int priority,
  }) async {
    try {
      final todo =
          Todo.initialize(title: title, priority: priority, content: content);
      await taskLocalDatasource.createTask(todo: todo);
      return Right(todo);
    } catch (e, s) {
      print(e);
      print(s);
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteTask({required String id}) async {
    try {
      await taskLocalDatasource.deleteTask(id: id);
      return const Right(true);
    } catch (e, s) {
      print(e);
      print(s);
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Todo>> updateTask({
    String? title,
    String? content,
    int? priority,
    required String id,
  }) async {
    try {
      final todo = await taskLocalDatasource.updateTask(
        id: id,
        title: title,
        content: content,
        priority: priority,
      );
      return Right(todo);
    } catch (e, s) {
      print(e);
      print(s);
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getTasks() async {
    try {
      final todo = await taskLocalDatasource.getTasks();
      return Right(todo);
    } catch (e, s) {
      print(e);
      print(s);
      return Left(Failure(e.toString()));
    }
  }
}
