import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/views/home_view.dart';

import 'views/second.dart';

void main() => runApp(const MyApp());

//! https://github.com/jonataslaw/getx/blob/master/documentation/en_US/state_management.md

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => const HomeView()),
        GetPage(name: "/second", page: () => const SecondView(), transition: Transition.downToUp),
      ],
    );
  }
}
