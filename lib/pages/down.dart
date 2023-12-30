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
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        child: DropdownButton<String>(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(
              value: 'Dart',
              child: Text("Dart"),
            ),
            DropdownMenuItem<String>(
              value: 'Kotlin',
              child: Text('Kotlin'),
            ),
            DropdownMenuItem<String>(
              value: 'Swift',
              child: Text('Swift'),
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
