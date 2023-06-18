import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bean/Teacher.dart';

class ObxPage extends StatelessWidget {
  var teacher = Teacher();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gex Obx----自定义"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("我的名字是${teacher.name}")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  teacher.name.value = teacher.name.value.toUpperCase();
                },
                child: Text("转换大写"))
          ],
        ),
      ),
    );
  }
}
