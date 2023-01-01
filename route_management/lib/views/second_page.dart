// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    //! can send arguments with get
    // print(Get.arguments);

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              child: Text("Go To First"),
              onPressed: () => Get.toNamed("/first", arguments: "Second to First - to"),
            ),
            ElevatedButton(
              child: Text("Dialog"),
              //! Navigator.pop(context) = Get.back()
              onPressed: () => Get.defaultDialog(title: "Default Dialog", content: Text(Get.arguments), onConfirm: () => Get.back()),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text("Bottom Sheet"),
              onPressed: () => Get.bottomSheet(Container(height: 100, color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
