import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                    tooltip: "menu",
                    icon: const Icon(Icons.menu),
                    onPressed: () {}),
                title: const Text('This is my App'),
                actions: [
                  IconButton(
                      tooltip: 'Search here',
                      icon: const Icon(Icons.search),
                      onPressed: () {})
                ]),
            body: Container(
                decoration: const BoxDecoration(color: Colors.yellowAccent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Hello Mr Archange',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15)),
                    const Text('Hello Mr Archange',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15)),
                    const Text('Hello Mr Archange',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15)),
                    const Expanded(
                      child: Text('Hello Mr Archange',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 15)),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 104, 81, 13),
                            border:
                                Border.all(width: 10, color: Colors.black38)),
                        child:
                            Expanded(child: Image.asset('images/nature.jpg')))
                  ],
                ))));
  }
}
