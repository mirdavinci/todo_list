import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_getx/model/todo_model.dart';

class TodoController extends GetxController {
  // var todos = List<TodoModel>().obs; => deprecated
  var todos = <TodoModel>[].obs;

  final todoTextController = TextEditingController();
  // final addNewItemTextController = TextEditingController();

  @override
  void onInit() {
    List? storedTodos = GetStorage().read<List>('todos');
    if (storedTodos != null) {
      todos = storedTodos
          .map((todoItem) => TodoModel.fromJson(todoItem))
          .toList()
          .obs;
    }

    ever(todos, (_) {
      GetStorage().write('todos', todos.toList());
    });

    super.onInit();
  }

  void deleteTodo(index) {
    todos.removeAt(index);
    Get.snackbar('Removed', "Task was successfully deleted",
        snackPosition: SnackPosition.BOTTOM);
  }
}
