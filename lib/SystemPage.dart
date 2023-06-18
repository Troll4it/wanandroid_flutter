import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wan/tree_entity.dart';

import 'net/Net.dart';
import 'net/NetMethod.dart';

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
    print("请求");
    var result = await Net().get("/tree/json");
    print("请求${json.decode(result.data.toString())}");
    print(
        "请求:::::${TreeEntity.fromJson(json.decode(result.data)).data?.first.name}");
  }
}
