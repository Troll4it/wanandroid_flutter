import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wan/GridPage.dart';
import 'package:http/http.dart' as http;
import 'package:wan/ListPage.dart';
import 'package:wan/net/Net.dart';
import 'package:wan/net/NetMethod.dart';
import 'package:wan/net/NetResponse.dart';

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
    var result = await Net().post("/user/login",
        data: {"username": "Troll4it", "password": "a123456"});
  }
}
