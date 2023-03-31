import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/login.dart';
import 'package:reun_kra_jok/screen/start_app.dart';
import 'package:reun_kra_jok/widget/address_widget.dart';
import 'package:reun_kra_jok/widget/email_widget.dart';
import 'package:reun_kra_jok/widget/mobile_widget.dart';
import 'package:reun_kra_jok/widget/passwodr_widget.dart';
import 'package:reun_kra_jok/widget/username_widget.dart';
import '../widget/button_SingUp.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        // debugShowCheckedModeBanner: false,
        title: title,
        //  theme: ThemeData(primarySwatch: Colors.white)),
        home: MainLoginPage(),
      );
}

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({super.key});

  @override
  _MainLoginPageState createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  final formKey = GlobalKey<FormState>();
  final usernameCon = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
   final addressController = TextEditingController();
  // bool isChecked = false;
  
  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text(
            "REUN KRA JOK",
            style: TextStyle(color: Color.fromARGB(255, 56, 56, 56)),
          ),
          backgroundColor: Color.fromARGB(255, 210, 215, 215),
          // elevation: 20.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            tooltip: 'Back to StartPage',
            color: Color.fromARGB(255, 96, 96, 96),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const StartPage();
              }));
            },
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/Log.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                /* add child content here */
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 32, top: 30),
                      child: Row(
                        children: const <Widget>[
                          Text('Register',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 72, 72, 72))),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            padding: const EdgeInsets.fromLTRB(45, 50, 45, 30),
                            width: double.infinity,
                            height: 700,
                            decoration: ShapeDecoration(
                                color: const Color.fromARGB(149, 241, 240, 240),
                                shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                        ),
                        Form(
                          key: formKey,
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: AutofillGroup(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 30, top: 20, bottom: 50),
                                  ),
                                  UserNameFieldWidget(controller: usernameCon),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  EmailFieldWidget(controller: emailController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  PasswordFieldWidget(
                                      controller: passwordController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                    AddressFieldWidget(
                                      controller: addressController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  MobileFieldWidget(
                                      controller: mobileController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  buildButton(), 
                                  buildNoAccount(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  Widget buildButton() {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 30, top: 20, bottom: 50),
      ),
      SizedBox(
        width: 280,
         height: 50,
        child: ButtonWidgetSingUp(
          text: 'Register',
          onClicked: login,)
        ),
    ]);
  }
  void login() {
    final form = formKey.currentState!;

    if (form.validate()) {
      TextInput.finishAutofillContext();
      final email = emailController.text;
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(
          content: Text('Your email is $email'),
        ));
    }
  }
  Widget buildNoAccount() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Do have an account?'),
          TextButton(
            child: const Text(
              'LogIn',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginPage();
              }));
            },
          ),
        ],
      );

}
