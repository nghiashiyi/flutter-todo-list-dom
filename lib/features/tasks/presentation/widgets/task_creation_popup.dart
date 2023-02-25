import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_editor_notifier.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_editor_state.dart';
import 'package:flutter_todo_list_dom/features/tasks/presentation/manager/task_list_notifier.dart';

class TaskCreationPopup extends ConsumerStatefulWidget {
  const TaskCreationPopup({Key? key}) : super(key: key);

  @override
  ConsumerState<TaskCreationPopup> createState() => _TaskCreationPopupState();
}

class _TaskCreationPopupState extends ConsumerState<TaskCreationPopup> {
  String? _title;
  String? _note;
  String? _priority;

  @override
  Widget build(BuildContext context) {
    final provider = taskEditorProvider(null);
    final taskCreationState = ref.watch(provider);
    ref.listen(provider, (previous, next) {
      if (next is TaskEditorSavedState) {
        ref.read(taskListingProvider.notifier).loadOrRefreshTask();
        Navigator.of(context).pop();
      }
    });
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            if (taskCreationState is TaskEditorSavedFailedState)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    taskCreationState.error,
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              ),
            const SizedBox(height: 8),
            SizedBox(
              height: 56,
              child: Center(
                child: TextField(
                  decoration: const InputDecoration(
                      hintText: "Title*", border: OutlineInputBorder()),
                  minLines: 1,
                  maxLines: null,
                  onChanged: (text) => _title = text,
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(
                  hintText: "Note", border: OutlineInputBorder()),
              maxLines: 3,
              onChanged: (text) => _note = text,
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(
                  hintText: "Priority* (from 1-10)",
                  border: OutlineInputBorder()),
              maxLines: 1,
              onChanged: (text) => _priority = text,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {
                  ref.read(provider.notifier).createNew(
                      title: _title, priority: _priority, content: _note);
                },
                child: const Text("Create Task")),
          ],
        ),
      ),
    );
  }
}
