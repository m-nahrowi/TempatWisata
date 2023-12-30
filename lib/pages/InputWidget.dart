import 'package:flutter/material.dart';


class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('Input widget'),
          ],
          
        ),
      ),
    );
  }
}
