import 'package:flutter/material.dart';



class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Text('Input widget'),
            // Input latihan

            Container(
              child: Column(
                children: [
                  Text('ini textfield biasa'),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'write yourname here...',
                      labelText: 'Your Name',
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text('Hello, $_name'),
                              );
                            });
                      },
                      child: const Text('submit'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
