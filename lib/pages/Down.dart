import 'package:flutter/material.dart';

class Down extends StatefulWidget {
  const Down({super.key});

  @override
  State<Down> createState() => _DownState();
}

class _DownState extends State<Down> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ini DropDown"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        child: DropdownButton<String>(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(child: Text("Dart"), value: 'Dart'),
            DropdownMenuItem<String>(
              child: Text('Kotlin'),
              value: 'Kotlin',
            ),
            DropdownMenuItem<String>(
              child: Text('Swift'),
              value: 'Swift',
            ),
          ],
          value: language,
          hint: const Text('Select Language'),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          },
        ),
      ),
    );
  }
}
