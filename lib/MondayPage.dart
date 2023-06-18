import 'package:flutter/material.dart';

class MondayPage extends StatelessWidget {
  const MondayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 50,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Image.network(
                        "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                    )),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      child: ListView(
                        children: [
                          Image.network(
                              "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                              fit: BoxFit.cover,
                              height: 45),
                          SizedBox(height: 10), //高度为 10 的间距
                          Image.network(
                              "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                              fit: BoxFit.cover,
                              height: 45),
                        ],
                      ),
                    ))
              ],
            ),
            const Divider(),
            Stack(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.network(
                      "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover)),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover)),
              Align(
                  alignment: Alignment.topRight,
                  child: Image.network(
                      "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover))
            ]),
            const Divider(height: 10),
            ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://img.lianzhixiu.com/uploads/210106/37-21010609363aS.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text("你好，生活",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                subtitle: const Text("笑一笑没什么不了",
                    style: TextStyle(color: Colors.blue)))
          ],
        ));
  }
}
