import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/login.dart';
import 'package:reun_kra_jok/widget/bt_submitOrder.dart';
import 'package:reun_kra_jok/widget/buttonChooseFile.dart';
import 'package:reun_kra_jok/widget/button_buynow.dart';
import 'cart.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: Complete(),
      );
}

class Complete extends StatefulWidget {
  const Complete({super.key});
  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  repeat: ImageRepeat.repeat,
                  image: AssetImage('image/cart.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            /* Bg-blue */
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                      top: 150, left: 30, right: 30, bottom: 150),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(13.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 3, 2, 2).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                  children: <Widget>[
                    
                    Container(
                      margin: EdgeInsets.only(top: 350, left: 150, right: 150),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image.network(
                        'image/check.png',
                        width: 100,
                        height: 100,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                    
                  ],
                  
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 500.0, bottom: 100.0, right: 100.0, left: 110.0),
                  child: Column(
                    children: const <Widget>[
                      Text('แจ้งชำระเงินเสร็จสิ้น',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 72, 72, 72))),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 550.0, bottom: 100.0, right: 120.0, left: 135.0),
                  child: Column(
                    children: const <Widget>[
                      Text('ขอบคุณที่ใช้บริการ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 72, 72, 72))),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.only(left: 330, top: 180),
                  icon: const Icon(Icons.close_outlined),
                  tooltip: 'Colse',
                  color: Color.fromARGB(255, 25, 25, 25),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
