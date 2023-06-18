import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// SnackBar
class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Snackbar 标题", "欢迎使用Snackbar");
                  },
                  child: Text("显示 Snackbar"))
            ],
          ),
        ),
      ),
    );
  }

}
