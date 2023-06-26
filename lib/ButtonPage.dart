import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wan/net/Net.dart';

class ButtonPage extends StatelessWidget {
  var context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return GetMaterialApp(
      title: "GetX",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _getData();
                  },
                  child: Text("显示 Snackbar"))
            ],
          ),
        ),
      ),
    );
  }

  void _getData() async {
    await post("/user/login",
        data: {"username": "dddddd", "password": "a123456"},
        onSuccess: (data) => {},
        onFailure: (errCode) => {});
  }
}
