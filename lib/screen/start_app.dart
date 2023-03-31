import 'package:flutter/material.dart';
import 'package:reun_kra_jok/screen/SignUpPage.dart';
import 'package:reun_kra_jok/screen/login.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    repeat: ImageRepeat.repeat,
                    image: AssetImage('image/BG.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                 
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 90),
                      child: const Image(
                          width: 150,
                          height: 150,
                          image: AssetImage('image/logo.png')),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: const Text(
                        'REUN KRA JOK',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              blurRadius: 5.0,
                              color: Color.fromARGB(255, 60, 60, 61),
                              offset: Offset(5.0, 5.0),
                            )
                          ],
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 250),
                      width: 199,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Color.fromARGB(150, 215, 214, 214),
                          // background,
                        ),
                        child: const Text('Log In',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 100, top: 20),
                      width: 199,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            shape: const StadiumBorder(),
                            primary: Colors.white
                            // background,
                            ),
                        child: const Text('Sign Up',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 68, 68, 68))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUpPage();
                          }));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
