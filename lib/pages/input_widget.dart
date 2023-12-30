import 'package:flutter/material.dart';

void main() => runApp(const InputWidget());

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String _name = '';
  bool lightOn = false;
  String? language;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widget"),
      ),
      body: ListView(
        children: <Widget>[
          const Text(
            'Input widget',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text('ini textfield biasa'),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'write yourname here...',
                    labelText: 'Your Name',
                  ),
                  onChanged: (String value) {
                    setState(
                      () {
                        _name = value;
                      },
                    );
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
                    child: const Text('submit')),
              ],
            ),
          ),

          // Swicth
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                const Text('ini Switch'),
                Switch(
                    value: lightOn,
                    onChanged: (bool value) {
                      setState(() {
                        lightOn = value;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(lightOn ? 'Light On' : 'Light Off'),
                          duration: const Duration(seconds: 1)));
                    })
              ],
            ),
          ),
          // Radio
          Container(
            child: Column(
              children: [
                const Text("Ini Radio"),
                ListTile(
                  leading: Radio(
                    value: 'dart',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar();
                      });
                    },
                  ),
                  title: const Text('Dart'),
                ),
                ListTile(
                  leading: Radio(
                    value: 'kotlin',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar();
                      });
                    },
                  ),
                  title: const Text("kotlin"),
                ),
                ListTile(
                  leading: Radio(
                    value: 'Swift',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar();
                      });
                    },
                  ),
                  title: const Text('Swift'),
                )
              ],
            ),
          ),
          // Checkbox
          Container(
              child: Column(
            children: [
              const Text("ini Checkbox"),
              ListTile(
                leading: Checkbox(
                  value: agree,
                  onChanged: (bool? value) {
                    setState(() {
                      agree = value!;
                    });
                  },
                ),
                title: const Text("Agree / Disagree"),
              )
            ],
          ))
        ],
        // ),
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
