import 'package:flutter/material.dart';
// Mobile No ต้องมี 10 ตัวและขึ้นต้นด้วย “0”

class MobileFieldWidget extends StatefulWidget {
  final TextEditingController controller;

   MobileFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _MobileFieldWidgetState createState() => _MobileFieldWidgetState();
}

class _MobileFieldWidgetState extends State<MobileFieldWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextFormField(
        controller: widget.controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: 'Tel.',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
         keyboardType: TextInputType.number,
          cursorColor: Colors.red,
        autofillHints: [AutofillHints.telephoneNumber],
       validator: (mobile) {
          if (mobile != null && 
              !RegExp(r'^(0?)+\d{10}$')
                  .hasMatch(mobile)) {
            return 'Enter maxlimit. 10 characters. 0XXXXXXXXX ';
          }
          return null;
        },
      ),
    );
    // hintText: 'Enter Name Here',
  }
}
