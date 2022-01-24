import 'package:flutter/material.dart';

main() {
  runApp(const AppWidget(title: 'Fluterando 3'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Container(
        child: Center(child: Text('Flutterando')),
      ),
    );
  }
}
