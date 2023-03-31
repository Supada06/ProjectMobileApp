import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/payment.dart';
import 'package:reun_kra_jok/widget/bt_submitOrder.dart';
import 'cart.dart';

class AddSlipPage extends StatelessWidget {
  const AddSlipPage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: AddSlip(),
      );
}

class AddSlip extends StatefulWidget {
  const AddSlip({super.key});
  @override
  _AddSlipState createState() => _AddSlipState();
}

class _AddSlipState extends State<AddSlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255,143, 173, 167),
      body: SafeArea(
        child: Stack(
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
                        color: const Color.fromARGB(255, 3, 2, 2).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 120, left: 50, right: 50, bottom: 250),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 172, 182, 180),
                    borderRadius: BorderRadius.all(
                      Radius.circular(13.0),
                    ),
                  ),
                ),
                 
                 Column(
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.only(left: 330, top: 70),
                  icon: const Icon(Icons.close_outlined),
                  tooltip: 'Colse',
                  color: const Color.fromARGB(255, 25, 25, 25),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PaymentPage();
                    }));
                  },
                ),
              ],
            ),
            Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 170, left: 70, right: 70),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Image.asset(
                        'image/Slip.png',
                        width: 300,
                        height: 420,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
               Row(
              children: <Widget>[ const
                Padding(padding: EdgeInsets.only(left: 20, top: 90)),
                 buildButtonSubmit(),
              ],
            ),
                text(),
              ],
            ),
      ),
    );
  }

  Widget text() {
    return const ListTile(
      contentPadding: EdgeInsets.only(left: 55, top: 670,right: 50),
      subtitle: Text(
        '**การแนบหลักฐานจะช่วยทำให้ตรวจสอบได้เร็วขึ้น \n [ ไฟล์ jpg,gif,png,pdf ไม่เกิน2MB]**',
        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 95, 95, 95)),
      ),
    );
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
