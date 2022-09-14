import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailpriceproduct.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: const Text("AUNPAO"), backgroundColor: Colors.black),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 20,
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.lightGreen,
                    ),
                    title: const Text('รหัสสินค้า 1122 '),
                    subtitle: Text(
                      'สินค้า 7 รายการ ',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'วันที่สั่ง 20 / 07 / 25542',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.discount_rounded,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('250 .-  '),
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.push(context,
      MaterialPageRoute(builder: (context) => Detail()));
                        },
                        child: const Text('รายละเอียด >'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
