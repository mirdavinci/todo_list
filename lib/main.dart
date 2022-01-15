import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx/binding/home_binding.dart';
import 'package:todo_getx/view/home_screen.dart';
import 'package:todo_getx/view/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Todo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: HomeBinding(),
      home: const HomeScreen(),
    );
  }
}
