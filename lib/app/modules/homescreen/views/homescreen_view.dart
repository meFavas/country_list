// ignore_for_file: prefer_const_constructors

import 'package:charts/app/consts/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/homescreen_controller.dart';

class HomescreenView extends GetView<HomescreenController> {
  const HomescreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("countries"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Themes.height1,
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    title: Text("title"),
                    subtitle: Text("subtile"),
                  ),
                ),
              ),
              Themes.height2,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("< previous"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Next >"))
                ],
              )
            ],
          ),
        ));
  }
}
