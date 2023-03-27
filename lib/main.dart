import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rand = new Random();
  int randomnumber = 0;
  bool value = true;
  double Dvalue = 0.0;
  int otpnumber = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
       child: Column(
         children: [
           Text('Random Number : $randomnumber'),
           ElevatedButton(onPressed: (){
             randomnumber = rand.nextInt(1000);
             setState(() {

             });
           }, child: Text('Generate number')),
           SizedBox(height: 20,),
           Text('Otp Number : $otpnumber'),
           ElevatedButton(onPressed: (){
             otpnumber = help();
             setState(() {

             });
           }, child: Text('Generate number'))
         ],
       ),
      ),
    );
  }
}

int help() {
  var rnd = new Random();
  int x = rnd.nextInt(88888)+10000;
  return x;
}
