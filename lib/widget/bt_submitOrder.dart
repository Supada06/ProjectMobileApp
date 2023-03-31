import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/complete.dart';

class ButtonSubmitOrder extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonSubmitOrder({
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
          primary: const Color.fromARGB( 255, 80, 172, 155), 
          // background,
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CompletePage();
                }));
        },
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      );
}
