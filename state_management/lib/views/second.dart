// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/counter_controller.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

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
            heroTag: "1",
            onPressed: (() => counterCon.increment()),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "5",
            onPressed: (() => counterCon.decrement()),
            child: const Icon(Icons.remove),
          ),
          GetX<CounterController>(builder: (countCon) {
            return FloatingActionButton(
              heroTag: "2",
              onPressed: (() {
                countCon.changeTheme();
                print(countCon.darkTheme);
              }),
              child: countCon.darkTheme ? const Icon(Icons.dark_mode) : const Icon(Icons.light_mode),
            );
          }),
          FloatingActionButton(
            heroTag: "3",
            onPressed: (() => Get.snackbar(counterCon.message, counterCon.counterValue.toString())),
            child: const Icon(Icons.message),
          ),
          FloatingActionButton(
            heroTag: "4",
            onPressed: (() => Get.back()),
            child: const Icon(Icons.navigate_before),
          ),
        ],
      ),
    );
  }
}
