import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AUNGPAO'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          Text("1 x"),
                          SizedBox(width: 10,),
                          Text("ข้าวตราฉัตร",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 190),
                          Text('250',style: TextStyle(fontWeight : FontWeight.bold),),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ลด 20 %",style: TextStyle(fontSize: 15),),
                          Text('- 20',style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 90,
            child: Card(
              elevation: 20,
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("รวมเบื้องต้น",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ราคา ",style: TextStyle(fontSize: 15),),
                        Text("250",style: TextStyle(fontSize: 15,fontWeight : FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            child: Card(
              elevation: 20,
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ส่วนลด"),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ลด 20 % ",style: TextStyle(fontSize: 15),),
                        Text('- 20',style: TextStyle(fontSize: 15,fontWeight : FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.0))),
            child: Column(
              children: [
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("รวม",style: TextStyle(color: Colors.white,fontSize: 25),),
                      Text('230 บาท',style: TextStyle(color: Colors.white,fontSize: 25),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
