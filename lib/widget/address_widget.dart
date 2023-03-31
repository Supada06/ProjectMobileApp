import 'package:flutter/material.dart';


class AddressFieldWidget extends StatefulWidget {
  final TextEditingController controller;

   AddressFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _AddressFieldWidgetState createState() => _AddressFieldWidgetState();
}

class _AddressFieldWidgetState extends State<AddressFieldWidget> {

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
          labelText: 'Address',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
         keyboardType: TextInputType.text,
          cursorColor: Colors.red,
        autofillHints: [AutofillHints.addressState],
       validator: (address) {
          if (address != null && 
              !RegExp(r'^a-zA-Z0-9$')
                  .hasMatch(address)) {
            return 'Enter a valid address ';
          }
          return null;
        },
      ),
    );
    // hintText: 'Enter Name Here',
  }
}
