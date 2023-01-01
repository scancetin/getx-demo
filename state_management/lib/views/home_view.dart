// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/counter_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterCon = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX State Management Demo"),
      ),
      body: Container(
        alignment: Alignment.center,
        // child: Obx(
        //   (() => Text(
        //         counterCon.counterValue.toString(),
        //         // Get.find<CounterController>().value.toString(),
        //         style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        //       )),
        // ),
        //! can use without declearing counterCon
        child: GetX<CounterController>(
          builder: (counterCon2) => Text(
            counterCon2.counterValue.toString(),
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        //! use GetBuilder and update() for reference type
        // child: GetBuilder<CounterController>(
        //   builder: (counterCon3) => Text(
        //     counterCon3.counterValue.toString(),
        //     // Get.find<CounterController>().value.toString(),
        //     style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (() => counterCon.increment()),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (() => counterCon.decrement()),
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: (() => Get.isDarkMode ? Get.changeTheme(ThemeData.light()) : Get.changeTheme(ThemeData.dark())),
            child: const Icon(Icons.dark_mode),
          ),
          FloatingActionButton(
            onPressed: (() => Get.snackbar(counterCon.message, counterCon.counterValue.toString())),
            child: const Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
