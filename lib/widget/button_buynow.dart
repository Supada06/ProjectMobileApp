import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/cart.dart';
import 'package:reun_kra_jok/screen/payment.dart';

class ButtonWidgetBuy extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidgetBuy({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          // maximumSize: Size.fromWidth(20),
          // minimumSize: const Size.fromHeight(50),
          shape: const StadiumBorder(),
          primary: const Color.fromARGB( 255, 80, 172, 155), 
          // background,
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PaymentPage();
                }));
        },
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );
}
