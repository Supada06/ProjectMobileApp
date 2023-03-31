import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:reun_kra_jok/main.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:reun_kra_jok/screen/decsrip_plant.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/indoorPage.dart';
import 'package:reun_kra_jok/screen/outdoorPage.dart';
import 'package:reun_kra_jok/widget/buttonNav.dart';

import '../widget/items_tree.dart';
import 'cart.dart';

class TreeTypePage extends StatelessWidget {
  const TreeTypePage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: Home(),
      );
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70, //ความสูงของappbar
        title: const Text(
          'REUN KRA JOK',
          style: TextStyle(
            color: Color.fromARGB(255, 96, 96, 96),
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                'image/pic.png',
              ),
              backgroundColor: Color.fromARGB(255, 98, 132, 104),
            ),
          ],
        ),
        elevation: 2.0,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(
              right: 30,
            ),
            icon: const Icon(Icons.search),
            color: const Color.fromARGB(255, 96, 96, 96),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 30, left: 30),
                      width: 90,
                      height: 30,
                      child: GFButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        text: "All",
                        textStyle: const TextStyle(
                            fontSize: 15, color: GFColors.WHITE),
                        blockButton: true,
                        color: Color.fromARGB(255, 143, 165, 161),
                        elevation: 1,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 90,
                        height: 30,
                        child: GFButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const IndoorPage();
                            }));
                          },
                          text: "In door",
                          textStyle: const TextStyle(
                              fontSize: 15, color: GFColors.WHITE),
                          blockButton: true,
                          color: const Color.fromARGB(255, 143, 165, 161),
                          elevation: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 30, right: 30),
                      width: 90,
                      height: 30,
                      child: GFButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OutdoorPage();
                          }));
                        },
                        text: "Out door",
                        textStyle: const TextStyle(
                            fontSize: 15, color: GFColors.WHITE),
                        blockButton: true,
                        color: const Color.fromARGB(255, 143, 165, 161),
                        elevation: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Expanded(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
                    child: const Image(
                      width: double.infinity,
                      height: 150,
                      image: AssetImage('image/bannerHome.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                textBanner(),
              ],
            ),
            //buttonฟอกอากาศ
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 60,
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(20),
                        shape: const CircleBorder(),
                        primary: const Color.fromARGB(1, 169, 189, 185),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TreeTypePage();
                        }));
                      },

                      // ignore: sort_child_properties_last
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'image/buttonHome1.png',
                        ),
                        backgroundColor: Color.fromARGB(255, 169, 189, 185),
                      ),
                    ),
                  ),
                ),
                //buttonดูแลง่าย
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.bottomCenter,
                        minimumSize: const Size.fromHeight(20),
                        shape: const CircleBorder(),
                        primary: const Color.fromARGB(1, 169, 189, 185),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TreeTypePage();
                        }));
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'image/buttonHome2.png',
                        ),
                        backgroundColor: Color.fromARGB(255, 169, 189, 185),
                      ),
                    ),
                  ),
                ),

                //buttonมงคล
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 60,
                      top: 20,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(20),
                        shape: const CircleBorder(),
                        primary: const Color.fromARGB(1, 169, 189, 185),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TreeTypePage();
                        }));
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'image/buttonHome3.png',
                        ),
                        backgroundColor: Color.fromARGB(255, 169, 189, 185),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                //ต้นไม้ดูเเลง่ายTypeplant 1
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 60,
                      top: 10,
                    ),
                    child: Text(
                      'ต้นไม้ดูเเลง่าย',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 96, 96, 96),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //ต้นไม้ฟอกอากาศTypePlant 2
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'ต้นไม้ฟอกอากาศ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 96, 96, 96),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //ต้นไม้มงคลTypePlant 3
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 60,
                      top: 10,
                    ),
                    child: Text(
                      'ต้นไม้มงคล',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 96, 96, 96),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //title AllProduct
            Row(
              children: const <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 30),
                  child: Text('ต้นไม้ดูเเลง่าย',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 96, 96, 96))),
                ),
              ],
            ),
            //treeList
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: ListTree(),
            ),
          ],
        ),
      ),
      //bottonNavBar
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(
          milliseconds: 800,
        ),
        height: 70,
        curve: Curves.easeInOutSine,
        child: BottomAppBar(
          notchMargin: 8.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                icon: const Icon(
                  Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CartPage();
                  }));
                },
                icon: const Icon(
                  CupertinoIcons.cart,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CartPage();
                  }));
                },
                icon: const Icon(
                  CupertinoIcons.person,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textBanner() {
    return const ListTile(
      contentPadding: EdgeInsets.only(
        top: 50,
      ),
      title: Text(
        'REUN KRA JOK',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      subtitle: Text(
        textAlign: TextAlign.center,
        '"เราใส่ใจทุกการเจริบเติบโต ส่งตรงถึงคุณด้วยความรัก"',
        style: TextStyle(
          fontSize: 13,
          color: Color.fromARGB(182, 255, 255, 255),
        ),
      ),
    );
  }
}
