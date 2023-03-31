import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/home.dart';
import '../widget/button_buynow.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: CartPage2(),
      );
}

class CartPage2 extends StatefulWidget {
  const CartPage2({super.key});
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage2> {
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
                    color:const Color.fromARGB(255, 25, 25, 25),
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
                        color: const Color.fromARGB(255, 204, 221, 223),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                               const Color.fromARGB(255, 3, 2, 2).withOpacity(0.2),
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
                                backgroundImage: NetworkImage(
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
}
