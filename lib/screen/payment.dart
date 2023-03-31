import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/login.dart';
import 'package:reun_kra_jok/widget/bt_submitOrder.dart';
import 'package:reun_kra_jok/widget/buttonChooseFile.dart';
import 'package:reun_kra_jok/widget/button_buynow.dart';
import 'cart.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: Payment(),
      );
}

class Payment extends StatefulWidget {
  const Payment({super.key});
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                      top: 60, left: 30, right: 30, bottom: 60),
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
                Container(
                  margin: const EdgeInsets.only(
                      top: 180, left: 50, right: 50, bottom: 150),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(145, 208, 246, 253),
                    borderRadius: BorderRadius.all(
                      Radius.circular(13.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 60, top: 80),
                  child: Column(
                    children: const <Widget>[
                      Text('ตรวจสอบรายการสั่งซื้อ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 72, 72, 72))),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 120),
                  child: Column(
                    children: const <Widget>[
                      Text(
                          '   กรุณาตรวจสอบรายการสินค้าและข้อมูลการจัดส่ง \n ว่าถูกต้องครบถ้วน จากนั้นกดปุ่ม “ยืนยันการสั่งซื้อ”',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 72, 72, 72))),
                    ],
                  ),
                ),
 
              
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 65.5, top: 480)),
                    Text(
                      'อีเมล์ผู้ซื้อ :',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 72, 72, 72),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 80, top: 520)),
                    Text(
                      'tanyaratlovejungkook25@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 72, 72, 72),
                        height: 2.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 65.5, top: 600)),
                    Text(
                      'เบอร์มือถือผู้ซื้อ :',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 72, 72, 72),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 65, top: 600)),
                    Text(
                      '0961984115',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 72, 72, 72),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 65, top: 700)),
                    Text(
                      'ที่อยู่สำหรับจัดส่ง',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 60, top: 780)),
                    Text(
                      '  101/443 Prachachuen Village Bang Talat,\n Pak Kret District Nonthaburi 11120',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Color.fromARGB(255, 72, 72, 72),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 210, top: 520)),
                    Text(
                      'บัญชีรับเงิน :',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                  Column(
                  children: const [
                    Padding(padding: EdgeInsets.only(left: 250, top: 560)),
                    Image(
                      image: NetworkImage('image/payment.png'),
                      width: 35,
                    ),
                  ],
                ),

                textUser(),
                textOrder(),
                textOrdName(),
                textmoney(),
                textmoneys(),
                textPay(),
                textImgPay(),
                text(),
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.only(left: 330, top: 70),
                  icon: const Icon(Icons.close_outlined),
                  tooltip: 'Colse',
                  color: Color.fromARGB(255, 25, 25, 25),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CartPage();
                    }));
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20, top: 900)),
                buildButtonChFile(),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20, top: 90)),
                 buildButtonSubmit(),
              ],
            ),
           
          ],
        ),
      ),
    );
  }

  Widget textPay() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 200, top: 550),
      title: Text(
        'ธ.xxxx',
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        'xxxxxxxxxxxxx',
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget textImgPay() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 65, top: 630),
      title: Text(
        'หลักฐานการโอน :',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget text() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 65, top: 690),
      subtitle: Text(
        '**การแนบหลักฐานจะช่วยทำให้ตรวจสอบได้เร็วขึ้น \n [ ไฟล์ jpg,gif,png,pdf ไม่เกิน2MB]**',
        style: TextStyle(fontSize: 15, color: Colors.grey),
      ),
    );
  }

  Widget buildButtonChFile() => SizedBox(
        child: Container(
          margin: const EdgeInsets.only(left: 220, top: 420),
          height: 40,
          width: 100,
          child: ButtonWidgetChoose(text: 'Choose File', onClicked: () {}),
        ),
      );
  Widget textUser() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 65, right: 60, top: 180),
      title: Text(
        'ข้อมูลผู้ซื้อสินค้า (สำหรับติดต่อ/แจ้งเตือน)',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget textOrder() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 65, right: 60, top: 420),
      title: Text(
        'รายการสินค้า :',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget textOrdName() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 230, top: 400),
      subtitle: Text(
        'Fiddle Fig',
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 72, 72, 72),
        ),
      ),
    );
  }

  Widget textmoney() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 65, right: 60, top: 460),
      title: Text(
        'จำนวนเงินที่ต้องชำระ :',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget textmoneys() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 230, top: 441),
      subtitle: Text(
        '450 ฿ /Pot',
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 72, 72, 72),
        ),
      ),
    );
    // จำนวนเงินที่ต้องชำระ :
  }
  Widget buildButtonSubmit() => SizedBox(
        child: Container(
          margin: const EdgeInsets.only(left: 150, top: 770),
          height: 40,
          width: 100,
          child: ButtonSubmitOrder(text: ' Submit', onClicked: () {}),
        ),
      );
}
