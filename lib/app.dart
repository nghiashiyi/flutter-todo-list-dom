import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_list_dom/core/mixin/after_layout_mixin.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_list_notifier.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_list_state.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/widgets/task_creation_popup.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/widgets/task_editing_popup.dart';
import 'package:intl/intl.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> with AfterLayoutMixin {
  @override
  void afterFirstLayout(BuildContext context) {
    ref.read(taskListingProvider.notifier).loadTasks();
  }

  @override
  Widget build(BuildContext context) {
    final taskListState = ref.watch(taskListingProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: taskListState is TaskListLoadedState && taskListState.isSorting
            ? IconButton(
                onPressed: () {
                  ref.read(taskListingProvider.notifier).refresh();
                },
                icon: const Icon(Icons.refresh),
              )
            : null,
        actions: [
          IconButton(
            onPressed: () async {
              final sortingResult = await showDialog<String?>(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: () =>
                                  Navigator.of(context).pop("priority"),
                              child: const Text("Sort by priority")),
                          TextButton(
                              onPressed: () =>
                                  Navigator.of(context).pop("title"),
                              child: const Text("Sort by title")),
                        ],
                      ),
                    );
                  });
              if (sortingResult == null) {
                return;
              }
              switch (sortingResult) {
                case "priority":
                  ref.read(taskListingProvider.notifier).sortTasksByPriority();
                  break;
                case "title":
                  ref.read(taskListingProvider.notifier).sortTasksByName();
                  break;
              }
            },
            icon: const Icon(Icons.sort),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 8),
            Text(
              'Your total task: ${taskListState.totalTasks != null ? "${taskListState.totalTasks}" : "-"}',
            ),
            Text(
              'Your completed task: ${taskListState.completedTasks != null ? "${taskListState.completedTasks}" : "-"}',
            ),
            const Divider(),
            Expanded(
              child: taskListState.mapOrNull(loaded: (state) {
                    final tasks = state.tasks;
                    if (tasks.isEmpty) {
                      return const Center(
                          child: Text(
                        "Click button to add first task",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ));
                    }
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        final task = tasks[index];

                        return ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return TaskEditingPopup(
                                    task: task,
                                  );
                                });
                          },
                          leading: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: task.isCompleted,
                            onChanged: (bool? value) {
                              ref
                                  .read(taskListingProvider.notifier)
                                  .completeTask(id: task.id);
                            },
                          ),
                          title: Text(
                            task.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                  "Created at: ${DateFormat("dd-MM-yyyy").format(task.createdAt)}",
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 10)),
                              Text(
                                task.content ?? "-",
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Priority: ${task.priority}"),
                              IconButton(
                                  onPressed: () =>
                                      showConfirmAndDelete(task.id),
                                  icon: const Icon(Icons.delete)),
                            ],
                          ),
                        );
                      },
                      itemCount: tasks.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
                      },
                    );
                  }) ??
                  const Center(child: Text("Click button to add first task")),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const TaskCreationPopup();
              });
        },
        tooltip: 'Add New Task',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void showConfirmAndDelete(String id) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Confirm to delete"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ref.read(taskListingProvider.notifier).deleteTask(id: id);
                  },
                  child: const Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("No")),
            ],
          );
        });
  }
}
