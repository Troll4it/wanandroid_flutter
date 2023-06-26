import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wan/tree_entity.dart';

import 'net/Net.dart';

class SystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "体系",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    requestData();
                  },
                  child: Text("请求数据"))
            ],
          ),
        ),
      ),
    );
  }

  void requestData() async {
    await get("/tool-appbase-service/api/fakeTabModule/getFakeTabModuleConfig", data: {"infoId": "463fbf41d3644815b4fa91f759bab5f7"},
        onSuccess: (data) {
      print("请求成功${json.decode(data.toString())}");},
        onFailure: () {
      print("请求失败");
    });
  }
}
