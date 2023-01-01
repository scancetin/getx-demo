import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:state_management/views/home_view.dart';

void main() => runApp(const MyApp());

//! https://github.com/jonataslaw/getx/blob/master/documentation/en_US/state_management.md

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Material App',
      home: HomeView(),
    );
  }
}
