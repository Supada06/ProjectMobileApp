import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reun_kra_jok/screen/cart.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/login.dart';
import 'package:reun_kra_jok/screen/payment.dart';
import '../widget/button_addCart.dart';
import '../widget/button_buynow.dart';

class DescPage extends StatelessWidget {
  const DescPage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: MainDescPage(),
      );
}

class MainDescPage extends StatefulWidget {
  const MainDescPage({super.key});
  @override
  _MainDescPageState createState() => _MainDescPageState();
}

class _MainDescPageState extends State<MainDescPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text(
            "REUN KRA JOK",
            style: TextStyle(
              color: Color.fromARGB(255, 96, 96, 96),
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.white,
          // elevation: 20.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            tooltip: 'Back to StartPage',
            color: Color.fromARGB(255, 96, 96, 96),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.only(
                right: 25,
              ),
              icon: const Icon(Icons.search),
              color: const Color.fromARGB(255, 96, 96, 96),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 30, top: 40),
                      child: Row(
                        children: const <Widget>[
                          Text('Fiddle Fig',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 96, 96, 96))),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 20, top: 30),
                      child: Row(
                        children: const <Widget>[
                          Text('Category',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 96, 96, 96))),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: const <Widget>[
                          Text('Indoor',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 104, 135, 117))),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 40, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text('Type',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 96, 96, 96))),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                      ),
                      child: Row(
                        children: const <Widget>[
                          Text('Air Tree',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 104, 135, 117))),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35, top: 30),
                      child: Row(
                        children: const <Widget>[
                          Text('Growth rate',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 96, 96, 96))),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: const <Widget>[
                          Text('Slow',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 104, 135, 117))),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 90, left: 100, right: 5),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image.network(
                        'https://images.rawpixel.com/image_600/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtczg4LXBtLTIwNDhfMi5qcGc.jpg',
                        width: 150,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 320, 30, 0),
                      height: 320,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 226, 228),
                        borderRadius: BorderRadius.all(
                          Radius.circular(13.0),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: const EdgeInsets.only(top: 350),
                  child: Row(
                    children: const <Widget>[
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Icon(Icons.wb_sunny_outlined),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 330, left: 80,right: 40),
                  child: Column(
                    children: <Widget>[
                      textLight(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 420),
                  child: Row(
                    children: const <Widget>[
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Icon(Icons.water_drop_outlined),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 400, left: 80),
                  child: Column(
                    children: <Widget>[
                      textWater(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 490),
                  child: Row(
                    children: const <Widget>[
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Icon(Icons.water_outlined),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 470, left: 80),
                  child: Column(
                    children: <Widget>[
                      textSoil(),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 565)),
                    Row(
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.only(left: 50)),
                        Icon(Icons.thermostat),
                      ],
                    ),
                  ],
                ),
                //textLight
                Container(
                  margin: const EdgeInsets.only(top: 545, left: 80),
                  child: Column(
                    children: <Widget>[
                      textTempereture(),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 60.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 410.0, horizontal: 20),
                  child: textWater(),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 60.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 480.0, horizontal: 20),
                  child: textSoil(),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 555.0, horizontal: 20),
                  child: textTempereture(),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(
            milliseconds: 800,
          ),
          height: 90,
          curve: Curves.easeInOutSine,
          child: BottomAppBar(
            // notchMargin: 8.0,
            shape: const CircularNotchedRectangle(),
            child: Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(
                      left: 30,
                    )),
                    Column(
                      children: const <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                          top: 30,
                        )),
                        Text(' 450 ฿ / Pot',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 72, 72, 72))),
                      ],
                    ),
                  ],
                ),
                buildButtontAddCart(),
                buildButtonBuy(),
              ],
            ),
          ),
        ),
      );
  Widget textLight() {
    return const ListTile(
      title: Text('Light'),
      subtitle: Text(
        'Loamy,medium moisture,well-draining',
        style: TextStyle(fontSize: 13),
      ),
    );
  }

  Widget textWater() {
    return const ListTile(
      title: Text('Water'),
      subtitle: Text(
        'When the top inch of soil feels dry',
        style: TextStyle(fontSize: 13),
      ),
    );
  }

  Widget textSoil() {
    return const ListTile(
      title: Text('Soil'),
      subtitle: Text(
        'Partial shade',
        style: TextStyle(fontSize: 13),
      ),
    );
  }

  Widget textTempereture() {
    return const ListTile(
      title: Text('Tempereture'),
      subtitle: Text(
        '60-82 degrees Fahrenheit',
        style: TextStyle(fontSize: 13),
      ),
    );
  }

  Widget buildButtontAddCart() => SizedBox(
        child: Container(
          margin: const EdgeInsets.only(left: 150, top: 25),
          height: 40,
          width: 120,
          child: ButtonWidgetAddCart(
            text: 'Add to Cart',
            onClicked: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Cart();
              }));
            },
          ),
        ),
      );
  Widget buildButtonBuy() => SizedBox(
        child: Container(
          margin: const EdgeInsets.only(left: 280, top: 25),
          height: 40,
          width: 100,
          child: ButtonWidgetBuy(text: 'BUY NOW', onClicked: () {}),
        ),
      );
}
