// ignore_for_file: prefer_const_constructors

import 'package:charts/app/modules/homescreen/views/homescreen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomescreenView(
        
      ),
    );
  }
}
