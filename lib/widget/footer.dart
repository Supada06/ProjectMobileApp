import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FooterPage(),
      debugShowCheckedModeBanner: false ,
    );
  }
}

class FooterPage extends StatefulWidget {
  const FooterPage({Key? key}) : super(key: key);
  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Persistent Footer"),
          centerTitle: true,
        ),
       
        persistentFooterButtons: const [
          Icon(Icons.settings),
          SizedBox(width: 5),
          Icon(Icons.exit_to_app),
          SizedBox(width: 10,),
        ],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue,)),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.blue,)),
            BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.blue,)),
            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.blue,))
          ],
        )
    );
  }
}