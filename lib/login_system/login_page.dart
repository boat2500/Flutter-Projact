import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Container(
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                Color.fromARGB(255, 40, 124, 221),
                Color.fromARGB(255, 39, 185, 230),
                Color.fromARGB(255, 1, 21, 27)
              ])),
          child: ListView(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 255, 249, 196),
                        Color.fromARGB(255, 200, 230, 201)
                      ])),
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldEmail(),
                      buildTextFieldPassword(),
                      buildButtonSignIn(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Container buildButtonSignIn() {
  return Container(
      constraints: BoxConstraints.expand(height: 50),
      child: Text("Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.green[200]),
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(12));
}

Container buildTextFieldEmail() {
  return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
      child: TextField(
          decoration: InputDecoration.collapsed(hintText: "Email"),
          style: TextStyle(fontSize: 18)));
}

Container buildTextFieldPassword() {
  return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration.collapsed(hintText: "Password"),
          style: TextStyle(fontSize: 18)));
}
