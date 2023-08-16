import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: "Home",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String  title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      title: Text(
        widget.title,
    style: const TextStyle(
      color: Colors.black38,

    ),)),
    body: const Center(
      child: Text('Hello',
       style: TextStyle(
        color: Colors.deepOrange,
         fontSize: 40,
         fontWeight: FontWeight.bold,
         backgroundColor: Colors.cyanAccent),)),);
  }
}

