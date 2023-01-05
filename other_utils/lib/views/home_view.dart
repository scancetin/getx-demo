import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              child: Text("title".tr),
              onPressed: () => Get.toNamed("/second", arguments: "First to Second - to"),
            ),
            ElevatedButton(
              child: Text("changeLang".trParams({"emoji": "🌍"})),
              onPressed: () => Get.locale == const Locale("en_US") ? Get.updateLocale(const Locale("tr_TR")) : Get.updateLocale(const Locale("en_US")),
            ),
            ElevatedButton(
              child: Text("changeTheme".tr),
              onPressed: () => Get.isDarkMode ? Get.changeTheme(ThemeData.light()) : Get.changeTheme(ThemeData.dark()),
            ),
          ],
        ),
      ),
    );
  }
}
