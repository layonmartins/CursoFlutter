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

  Widget _body() {
    return Column(children: [
      SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/images/logo.png')),
                  Container(height: 20),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 20, bottom: 12),
                    child: Column(
                      children: [
                        TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder())),
                        SizedBox(height: 10),
                        TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Passworld',
                                border: OutlineInputBorder())),
                        SizedBox(height: 15),
                        MaterialButton(
                          textColor: Colors.white,
                          color: Colors.red,
                          onPressed: () {
                            if (email == 'jacob@flutterando.com.br' &&
                                password == '123') {
                              print('correto');
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              print('errado');
                            }
                          },
                          child: Container(
                              width: double.infinity,
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                              )),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/blurbackground.jpeg',
                fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.1),
        ),
        _body()
      ],
    ));
  }
}
