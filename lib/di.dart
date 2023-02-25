import 'package:flutter_todo_list_dom/features/tasks/data/data_sources/task_local_datasource.dart';
import 'package:flutter_todo_list_dom/features/tasks/data/models/todo_model.dart';
import 'package:flutter_todo_list_dom/features/tasks/data/repositories/task_repository.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/repositories/task_repository.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/create_task.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/delete_task.dart';
import 'package:flutter_todo_list_dom/features/tasks/domain/use_cases/update_task.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

GetIt get = GetIt.instance;

Future<void> setupLocator() async {
  /// Use cases
  get.registerLazySingleton(() => CreateNewTask(repository: get()));
  get.registerLazySingleton(() => UpdateTask(repository: get()));
  get.registerLazySingleton(() => DeleteTask(repository: get()));

  /// Repository
  get.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(taskLocalDatasource: get()),
  );

  /// Data sources
  get.registerLazySingleton<TaskLocalDatasource>(
      () => TaskLocalDatasourceImpl(taskBox: get()));

  /// Other services
  var box = await Hive.openBox<TodoModel>('AppDatabase');
  get.registerLazySingleton(() => box);
}
