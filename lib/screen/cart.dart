import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/cart2.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/login.dart';
import 'package:reun_kra_jok/screen/payment.dart';
import 'package:reun_kra_jok/widget/button_login.dart';

import '../widget/button_buynow.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: CartPage(),
      );
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  _CartPagePageState createState() => _CartPagePageState();
}

class _CartPagePageState extends State<CartPage> {
  // final formKey = GlobalKey<FormState>();

  bool isChecked = false; 
  bool isCheckeds = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              Row(
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                    tooltip: 'Back to HomePage',
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
              /* Bg-blue */
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin:
                        const EdgeInsets.only(top: 100, left: 30, right: 30),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 204, 221, 223),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 3, 2, 2).withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          )
                        ]),
                  ),
                  //imageProfile
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, bottom: 18.0, right: 18.0, left: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 80,
                              backgroundColor:
                                  Color.fromARGB(255, 98, 132, 104),
                              child: CircleAvatar(
                                radius: 300,
                                backgroundImage: AssetImage(
                                  'image/pic.png',
                                ),
                                backgroundColor:
                                    Color.fromARGB(255, 98, 132, 104),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                // CartAll Text
                  Container(
                    margin: const EdgeInsets.only(left: 60, top: 255),
                    child: Column(
                      children: const <Widget>[
                        Text('Cart All',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 72, 72, 72))),
                      ],
                    ),
                  ),
                  //เช็คบล็อกAll
                  Container(
                    margin: const EdgeInsets.only(
                      left: 310,
                      top: 250,
                      bottom: 0,
                    ),
                    child: Checkbox(
                      checkColor: const Color.fromARGB(255, 36, 36, 36),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: const Color.fromARGB(198, 178, 178, 178),
                      //  hoverColor: Color.fromARGB(255, 31, 31, 31),
                      side: const BorderSide(
                        color: Color.fromARGB(
                            255, 86, 86, 86), //your desire colour here
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
              //สีพื้นรายการสินค้า
              Stack(
                children: <Widget>[
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 55, top: 300),
                        height: 120,
                        width: 300,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(233, 230, 230, 230),
                          borderRadius: BorderRadius.all(
                            Radius.circular(13.0),
                          ),
                        ),
                      ),
                      
                    ],
                  ),

                  Expanded(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 60, top: 308),
                          child: const Image(
                            width: 80,
                            height: 100,
                            image: NetworkImage(
                                "https://images.rawpixel.com/image_600/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtczg4LXBtLTIwNDhfMi5qcGc.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //closeicon
                  Column(
                    children: <Widget>[
                      IconButton(
                        padding: const EdgeInsets.only(left: 320, top: 310),
                        icon: const Icon(Icons.close_outlined),
                        tooltip: 'Colse',
                        color: Color.fromARGB(255, 25, 25, 25),
                        iconSize: 20,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const CartPage2();
                          }));
                        },
                      ),
                    ],
                  ),
                  // checktree1
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 310, top: 350),
                            child: Checkbox(
                              checkColor: const Color.fromARGB(255, 36, 36, 36),
                              value: isCheckeds,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckeds = value!;
                                });
                              },
                              activeColor:
                                  const Color.fromARGB(197, 255, 255, 255),
                              //  hoverColor: Color.fromARGB(255, 31, 31, 31),
                              side: const BorderSide(
                                color: Color.fromARGB(
                                    255, 86, 86, 86), //your desire colour here
                                width: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 160, top: 332),
                            child: Column(
                              children: const <Widget>[
                                Text('Fiddle Fig',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 72, 72, 72))),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, top: 332),
                            child: Column(
                              children: const <Widget>[
                                Text('300 ฿',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            Color.fromARGB(255, 72, 72, 72))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(
            milliseconds: 800,
          ),
          height: 90,
          curve: Curves.easeInOutSine,
          child: BottomAppBar(
            notchMargin: 8.0,
            shape: const CircularNotchedRectangle(),
            child: Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(
                      left: 50,
                    )),
                    Column(
                      children: const <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                          top: 30,
                        )),
                        Text('Totle 300 Bath',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 72, 72, 72))),
                      ],
                    ),
                    buildButtonBuy(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButtonBuy() => SizedBox(
        child: Container(
          margin: const EdgeInsets.only(left: 80),
          height: 50,
          width: 100,
          child: ButtonWidgetBuy(text: 'BUY NOW', onClicked: () {}),
        ),
      );
  // Widget buildmissible() => Dismissible(
  //     key: UniqueKey(),
  //     confirmDismiss: (direction) async {},
  //     onDismissed: (direction) {
       
  //       // ปัดไปซ้าย - ล่างขึ้นบน
  //       if (direction == DismissDirection.endToStart) {}
  //     },
  //     secondaryBackground: Container(
  //       // พื้นหลังปัดไปทางซ้าย
  //       color: Colors.red,
  //     ),
  //     child: Text('Dismiss widget'));
}
