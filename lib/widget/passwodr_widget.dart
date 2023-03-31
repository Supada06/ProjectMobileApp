import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const PasswordFieldWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _PasswordFieldWidgetState createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isHidden = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextFormField(
        controller: widget.controller,
        obscureText: isHidden,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          // prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon:
                isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            color: Colors.grey,
            onPressed: togglePasswordVisibility,
          ),
        ),
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Colors.red,
        autofillHints: [AutofillHints.password],
        onEditingComplete: () => TextInput.finishAutofillContext(),
        validator: (password) {
          if (password != null && 
              !RegExp(r'^.{8}$')
                  .hasMatch(password)) {
            return 'Enter maxlimit. 8 characters';
          }
          return null;
        },
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
