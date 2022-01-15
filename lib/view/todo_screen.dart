import 'package:flutter/material.dart';
import 'package:todo_getx/controller/todo_controller.dart';
import 'package:get/get.dart';
import 'package:todo_getx/model/todo_model.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoController = Get.find<TodoController>();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: todoController.todoTextController,
                decoration: const InputDecoration(
                  hintText: "What do you wanna do?",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                autofocus: true,
                style: const TextStyle(fontSize: 25),
                keyboardType: TextInputType.multiline,
                maxLines: 6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                ),
                ElevatedButton(
                  onPressed: () {
                    todoController.todos.add(
                      TodoModel(title: todoController.todoTextController.text),
                    );
                    Get.back();
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
