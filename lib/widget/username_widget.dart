import 'package:flutter/material.dart';

class UserNameFieldWidget extends StatefulWidget {
  final TextEditingController controller;

   UserNameFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _UserNameFieldWidgetState createState() => _UserNameFieldWidgetState();
}

class _UserNameFieldWidgetState extends State<UserNameFieldWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextFormField(
        controller: widget.controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 248, 248, 248),
          labelText: 'User Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
         keyboardType: TextInputType.name,
        cursorColor: Colors.red,
        autofillHints: [AutofillHints.name],
       validator: (user) {
          if (user != null && 
              !RegExp(r'^\D{1,20}$')
                  .hasMatch(user)) {
            return 'Enter not have numbers.';
          }
          return null;
        },
      ),
    );
    // hintText: 'Enter Name Here',
  }
}
