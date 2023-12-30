import 'package:flutter/material.dart';
import 'down.dart';

class ButtonDropDown extends StatelessWidget {
  const ButtonDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button dan Dropdown"),
      ),
      body: Container(
        margin: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text("ini adalah elevated button"),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("ElevantedButton")),
                ],
              ),
            ),
            // Container(
            Column(
              children: [
                const Text("ini adalah text button"),
                TextButton(onPressed: () {}, child: const Text("Text Button"))
              ],
            ),
            // ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text("Ini adalah OutlineButton"),
                  OutlinedButton(
                      onPressed: () {}, child: const Text("outlineButton")),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  const Text("IconButton"),
                  IconButton(
                    onPressed: () {
                      // aksi saat button ditekan
                    },
                    icon: const Icon(Icons.volume_up),
                    tooltip: 'Increase volume by 10',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text('ini drop down, (ongoing)'),
                  // klik tombol untuk ke page dropdown
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Down()));
                      },
                      child: const Text(("Pindah ke latihan DropDown")))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
