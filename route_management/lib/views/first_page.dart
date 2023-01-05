
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Go To Second"),
              // onPressed: () => Get.to(SecondPage(), arguments: "First to Second"),
              onPressed: () => Get.toNamed("/second", arguments: "First to Second - to"),
            ),
            ElevatedButton(
              child: const Text("Go To Second and delete previous"),
              //! delete previous screen from route stack
              onPressed: () => Get.offNamed("/second", arguments: "First to Second - off"),
            ),
            ElevatedButton(
              child: const Text("Go To Second and delete all"),
              //! delete all previous screens from route stack
              onPressed: () => Get.offAllNamed("/second", arguments: "First to Second - offAll"),
            ),
          ],
        ),
      ),
    );
  }
}
