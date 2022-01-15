import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What do you wanna do?",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                autofocus: true,
                style: TextStyle(fontSize: 25),
                keyboardType: TextInputType.multiline,
                maxLines: 6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                ),
                ElevatedButton(
                  onPressed: () {},
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
