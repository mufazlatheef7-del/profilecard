import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: Login(),
    );
  }
}