import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: 'App counter',
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int _counter = 0;
void countUp(){
  print("Tăng..");
  setState(() {
    _counter++;
  });
}

void countDow(){
  print("Giảm..");
  setState(() {
    _counter--;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const
        Text('Counter values'),
        Text('$_counter',
         style: const TextStyle(
          color: Colors.blue,
           fontSize: 40)),
        ]),
        ),

        floatingActionButton: 
        Padding(padding: EdgeInsets.all(8)
        ,child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            FloatingActionButton(
            onPressed: countDow,
            child: const Icon(Icons.remove),),
            FloatingActionButton(
            onPressed: countUp,
            child: const Icon(Icons.add),),
          ],
        ),)
        // FloatingActionButton(
        // onPressed: countUp,
        // child: const Icon(Icons.add),),

    );
  }
}