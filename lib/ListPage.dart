import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<StatefulWidget> createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  var list = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var uri = Uri.http("www.wanandroid.com", "/friend/json");
    var result = await http.get(uri);
    if (result.statusCode == 200) {
      var map = json.decode(result.body) as Map<String, dynamic>;
      setState(() {
        list = map["data"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          //如果 list 为空，展示为空白页面，不为空渲染 ListView
          body: list.isNotEmpty
              ? ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text("${list[index]["name"]}"),
                        onTap: () {
                        });
                  })
              : Text("加载中.....")),
    );
  }
}
