import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
            body: ListView(children: [
              for (int i = 0; i <= 100; i++)
                Slidable(
                    key: ValueKey(i),
                    startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        dismissible: DismissiblePane(onDismissed: () {}),
                        children: const [
                          SlidableAction(
                              onPressed: null,
                              icon: Icons.edit,
                              backgroundColor: Colors.blue,
                              label: 'Edit',
                              foregroundColor: Colors.white),
                          SlidableAction(
                              onPressed: null,
                              icon: Icons.delete,
                              backgroundColor: Colors.red,
                              label: 'Delete',
                              foregroundColor: Colors.white),
                        ]),
                    child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: list(
                            'Ngabirano', 'Archange', '25', 'UB', Icons.edit)))
            ])));
  }

  ListTile list(
      String first, String last, String age, String school, IconData icon) {
    return ListTile(
      title: Column(children: [
        Row(children: [
          Text(first,
              style:
                  const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          const SizedBox(width: 30),
          Text(last,
              style:
                  const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
        ]),
        const SizedBox(height: 5),
        Row(children: [
          Text(age,
              style:
                  const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          Container(
              margin: const EdgeInsets.only(left: 200),
              child: Row(children: [
                IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: () {},
                    tooltip: 'Edit'),
                IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {},
                    tooltip: 'Delete')
              ]))
        ]),
        const SizedBox(height: 5),
        Row(children: [
          Text(school,
              style:
                  const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
        ]),
      ]),
      leading: const CircleAvatar(
          backgroundImage: AssetImage('images/nature1.jpg'), radius: 30),
    );
  }
}
