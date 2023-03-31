import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reun_kra_jok/screen/SignUpPage.dart';
import 'package:reun_kra_jok/screen/home.dart';
import 'package:reun_kra_jok/screen/start_app.dart';
import 'package:reun_kra_jok/widget/button_login.dart';
import 'package:reun_kra_jok/widget/email_widget.dart';
import 'package:reun_kra_jok/widget/passwodr_widget.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
// }

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String title = 'REUN KRA JOK';

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

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
                          Text('Log in',
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
                      child:
                        Container(
                          margin: const EdgeInsets.all(30),
                          padding: const EdgeInsets.fromLTRB(45, 50, 45, 30),
                          width: double.infinity,
                          height: 400,
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
                                  EmailFieldWidget(controller: emailController),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  PasswordFieldWidget(
                                      controller: passwordController),
                                  // buildForgotPassword(),
                                  const SizedBox(
                                    height: 16,
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
  Widget buildButton() => SizedBox(
        child: Container(
          margin: const EdgeInsets.only(top: 80),
          
          width: 280,
           height: 50,
          child: ButtonWidgetLog(
            text: 'Log in',
            onClicked: login,
          ),
        ),
      );

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
          const Text('Don\'t have an account?'),
          TextButton(
            child: const Text(
              'Sign up',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SignUpPage();
              }));
            },
          ),
        ],
      );

  // Widget buildForgotPassword() => Container(
  //       // margin: const EdgeInsets.only(right: 160, top: 5, bottom: 5),
  //       alignment: Alignment.centerRight,
  //       child: Column(
  //         children: <Widget>[
  //           Row(
  //             children: <Widget>[
  //               const Padding(padding: EdgeInsets.only(left: 25, top: 60)),
  //               const SizedBox(
  //                 width: 10,
  //               ), //SizedBox
  //               const SizedBox(
  //                 height: 5,
  //               ),
  //               Theme(
  //                 data: ThemeData(unselectedWidgetColor: Colors.white),
  //                 child: Checkbox(
  //                   checkColor: Colors.white,
  //                   value: isChecked,
  //                   onChanged: (bool? value) {
  //                     setState(() {
  //                       isChecked = value!;
  //                     });
  //                   },
  //                   activeColor: Color.fromARGB(255, 182, 178, 178),
  //                   // hoverColor: Colors.white,
  //                   side: const BorderSide(
  //                     color: Colors.white, //your desire colour here
  //                     width: 0.5,
  //                   ),
  //                 ),
  //               ),
                // TextButton(
                //   child: const Text('Forgotten Password ?',
                //       style: TextStyle(
                //           fontWeight: FontWeight.normal,
                //           color: Color.fromARGB(255, 72, 72, 72))),
                //   onPressed: () {},
                // ),
      //         ],
      //       ),
      //     ],
      //   ),
      // );
}
