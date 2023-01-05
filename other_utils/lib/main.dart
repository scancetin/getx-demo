import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:other_utils/utils/translations.dart';
import 'package:other_utils/views/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: const HomeView(),
      translations: AppTranslations(),
      locale: const Locale("en_US"),
    );
  }
}
