import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
  // TODO: implement createState
}

String groupSimple = '';
bool isCheck = false;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widgets"),
      ),
      body: Column(
        children: [
          Text("TextField #1 Simple TextFormField"),
          TextFormField(),
          Text("TextField #2 KeyboardType and Password"),
          const TextField(
            obscureText: true,
          ),
          Text("TextField #1 Simple TextFormField"),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "username",
                hintText: "please enter username",
                hintStyle: TextStyle(color: Color.fromARGB(255, 7, 143, 255)),
                border: OutlineInputBorder()),
          ),
          Text("RadioLtstTile #1 Simple"),
          RadioListTile(
            title: Text('title 1'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'pizza',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
            },
          ),
          RadioListTile(
            title: Text('title 2'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'pizzas',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
            },
          ),
          RadioListTile(
            tileColor: Color.fromARGB(255, 7, 176, 255),
            title: Text('title 3'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'pizzass',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
            },
          ),
          Text("CheckboxListTile #1 Simple"),
          CheckboxListTile(
              title: Text('Libary implementation of Searching Algorithm'),
              value: isCheck,
              onChanged: ((value) {
                setState(() {
                  isCheck = value!;
                });
              })),
        ],
      ),
    );
  }
}
