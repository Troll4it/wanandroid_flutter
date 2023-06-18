import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GridPage extends StatelessWidget {
  var data = [
    {
      "title": "标题1",
      "desc": "描述1",
      "image": "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg"
    },
    {
      "title": "标题2",
      "desc": "描述2",
      "image": "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg"
    },
    {
      "title": "标题3",
      "desc": "描述3",
      "image": "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg"
    },
    {
      "title": "标题4",
      "desc": "描述4",
      "image": "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg"
    },
    {
      "title": "标题5",
      "desc": "描述6",
      "image": "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg"
    },
  ];

  final title;

  GridPage({super.key, this.title});

  // List<Widget> _getListWidget() {
  //   var listWidget = data.map((value) {
  //     return Container(
  //       decoration: //设置一个宽度为 1 绿色的边框
  //           BoxDecoration(border: Border.all(color: Colors.green, width: 1.0)),
  //       child: Column(
  //         //垂直布局里面嵌套：Expanded + SizedBox + Text + SizedBox
  //         children: [
  //           Expanded(
  //             //展开 Widget，类似 Android 里面 Linearlayout 设置权重，用在这是让图片自适应展开
  //             child: Image.network(
  //               // 图片
  //               value["image"] ?? "",
  //               fit: BoxFit.cover,
  //               width: double.infinity, //设置图片的宽度为屏幕的宽度
  //             ),
  //           ),
  //           const SizedBox(height: 12), //设置一个高度为 12 的空白间距
  //           Text(
  //               // 设置文本
  //               value["title"] ?? "",
  //               textAlign: TextAlign.center,
  //               style: const TextStyle(fontSize: 20)),
  //           const SizedBox(height: 12), //设置一个高度为 12 的空白间距
  //         ],
  //       ),
  //     );
  //   });
  //   return listWidget.toList();
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //       crossAxisCount: 2,
  //       // 设置一行显示 Widget 数量为 2
  //       padding: EdgeInsets.all(20),
  //       //设置 GridView 內边距为 20
  //       crossAxisSpacing: 20,
  //       //设置水平子 Widget 之间的间距为 20
  //       mainAxisSpacing: 20,
  //       //设置垂直子 Widget 之间的间距为 20
  //       children: _getListWidget() //设置子 Widget
  //       );
  // }
  Widget _getListWidget(context, index) {
    Fluttertoast.showToast(msg: title);
    return Container(
      decoration: //设置一个宽度为 1 绿色的边框
          BoxDecoration(border: Border.all(color: Colors.green, width: 1.0)),
      child: Column(
        //垂直布局里面嵌套：Expanded + SizedBox + Text + SizedBox
        children: [
          Expanded(
            //扩展 Widget，类似 Android 里面 Linearlayout 设置权重，用在这是让图片自适应
            child: Image.network(
              // 图片
              data[index]["image"] ?? "",
              fit: BoxFit.cover,
              width: double.infinity, //设置图片的宽度为屏幕的宽度
            ),
          ),
          const SizedBox(height: 12), //设置一个高度为 12 的空白间距
          Text(
              // 设置文本
              data[index]["title"] ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 12), //设置一个高度为 12 的空白间距
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: data.length,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //设置一行有两个 Widget
          crossAxisSpacing: 20, //设置水平子 Widget 之间的间距为 20
          mainAxisSpacing: 20, //设置垂直子 Widget 之间的间距为 20
          childAspectRatio: 1, //设置子组件宽高比例为 1
        ),
        itemBuilder: _getListWidget //将方法作为一个参数传入
        );
  }
}
