import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wan/getx/controller/TeacherController.dart';

class TeacherPage extends StatelessWidget {
  var controller = TeacherController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Obx - GetxController"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder(
                id: "ceshi",
                init: Get.put(controller),
                builder: (controll) {
                  return Text("我的名字 ${controll.teacher.name} ");
                }),
            ElevatedButton(
                onPressed: () {
                  controller.convertToUpperCase();
                },
                child: Text("转换为大写"))
          ],
        ),
      ),
    );
  }
}
