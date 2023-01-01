import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management/views/first_page.dart';
import 'package:route_management/views/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      initialRoute: "/first",
      getPages: [
        GetPage(name: "/first", page: () => const FirstPage()),
        GetPage(name: "/second", page: () => const SecondPage(), transition: Transition.downToUp),
      ],
    );
  }
}
