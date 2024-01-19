import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/view/screen/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
     appBarTheme: AppBarTheme(backgroundColor: Color(0xff075e54))
       
      ),
      home: Home(),
    );
  }
}




  

