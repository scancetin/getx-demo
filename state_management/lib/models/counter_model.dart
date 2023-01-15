class CounterModel {
  int counterValue;
  String message;
  bool darkTheme;

  CounterModel({
    this.counterValue = 0,
    this.message = "Counter value",
    this.darkTheme = false,
  });
}

//! can use like this with obx and getx
// class RxUser {
  // final name = "Camila".obs;
  // final age = 18.obs;
// }