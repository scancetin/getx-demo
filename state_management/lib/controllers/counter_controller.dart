import 'package:get/get.dart';
import 'package:state_management/models/counter_model.dart';

class CounterController extends GetxController {
  final _counter = CounterModel().obs;

  int get counterValue => _counter.value.counterValue;
  String get message => _counter.value.message;

  void increment() {
    // _counter.value.counterValue += 1;
    //! use update() with GetBuilder()
    // update();

    //! use _counter.update() with obx and getx
    _counter.update((val) {
      val?.counterValue += 1;
    });
  }

  void decrement() {
    // _counter.value.counterValue -= 1;
    // update();

    _counter.update((val) {
      val?.counterValue -= 1;
    });
  }
}
