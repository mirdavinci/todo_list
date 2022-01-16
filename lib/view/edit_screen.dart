import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/controller/todo_controller.dart';

class EditTodo extends StatelessWidget {
  // const EditTodo({Key? key, required this.index}) : super(key: key);
  EditTodo({required this.index});

  final int index;
  final todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    final editTodoController =
        TextEditingController(text: todoController.todos[index].title);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: editTodoController,
                decoration: const InputDecoration(
                  hintText: "",
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
                    var editing = todoController.todos[index];
                    editing.title = editTodoController.text;
                    todoController.todos[index] = editing;
                    print(editing.title);
                    print(editTodoController.text);
                    Get.back();
                  },
                  child: const Text(
                    "Update",
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
