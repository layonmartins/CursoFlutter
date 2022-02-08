import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png"),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email', border: OutlineInputBorder())),
                SizedBox(height: 10),
                TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Passworld', border: OutlineInputBorder())),
                SizedBox(height: 15),
                RaisedButton(
                  onPressed: () {
                    if (email == 'junior@flutter.com.br' && password == '123') {
                      print('correto');
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('errado');
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          )),
    ));
  }
}
