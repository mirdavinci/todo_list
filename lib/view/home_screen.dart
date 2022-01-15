import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/view/todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx TODO'),
      ),
      body: Container(

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
