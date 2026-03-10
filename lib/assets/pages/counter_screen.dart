import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Counter Screen"))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "$count",
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                count == 1 ? "click" : "clicks",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
          child: const Icon(Icons.plus_one_sharp),
        ),
      ),
    );
  }
}
