import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/addSlip.dart';

class ButtonWidgetChoose extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidgetChoose({
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
          primary: Color.fromARGB(255, 130, 130, 128), 
          // background,
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AddSlipPage();
                }));
        },
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      );
}
