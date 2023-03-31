import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/cart.dart';

import '../screen/home.dart';

class ButtonWidgetSingUp extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidgetSingUp({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          // maximumSize: Size.fromWidth(20),
          minimumSize: const Size.fromHeight(50),
          shape: const StadiumBorder(),
          primary: const Color.fromARGB(255, 21, 32, 37), 
          // background,
        ),
        onPressed: onClicked,
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      );
}
