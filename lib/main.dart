import 'package:flutter/material.dart';
import 'components/LoginButton.dart';
import 'pages/loginpages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/studentlogin': (context) => StudentLoginScreen(),
        '/parentlogin': (context) => ParentLoginScreen(),
        '/teacherlogin': (context) => TeacherLoginScreen()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage("assets/logo.PNG"),
              height: 200,
              width: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "An Organization That Helps You Grow",
            style: TextStyle(
              fontSize: 20,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          LoginButton(
            title: "Login as student",
            color: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, '/studentlogin');
            },
          ),
          LoginButton(
            title: "Login as parent",
            color: Colors.blueAccent,
            onPressed: () {
              Navigator.pushNamed(context, '/parentlogin');
            },
          ),
          LoginButton(
            title: "Login a teacher",
            color: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, '/teacherlogin');
            },
          )
        ],
      ),
    );
  }
}
