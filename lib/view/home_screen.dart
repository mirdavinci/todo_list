import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/controller/todo_controller.dart';
import 'package:todo_getx/view/edit_screen.dart';
import 'package:todo_getx/view/todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoController = Get.find<TodoController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx TODO'),
      ),
      body: Container(
        child: Obx(() {
          return ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(todoController.todos[index].title,
                        style: todoController.todos[index].isDone
                            ? const TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough)
                            : const TextStyle(color: Colors.black)),
                    onTap: () {
                      Get.to(() => EditTodo(index: index));
                    },
                    trailing: const Icon(Icons.edit),
                    leading: Checkbox(
                        value: todoController.todos[index].isDone,
                        onChanged: (newValue) {
                          var todo = todoController.todos[index];
                          todo.isDone = newValue!;
                          todoController.todos[index] = todo;
                        }),
                  ),
              separatorBuilder: (context, pos) => const Divider(),
              itemCount: todoController.todos.length);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const TodoScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
