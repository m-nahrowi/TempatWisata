import 'package:flutter/material.dart';
import 'Down.dart';
class ButtonDropDown extends StatelessWidget {
  const ButtonDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button dan Dropdown"),
      ),
      body: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("ini adalah elevated button"),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("ElevantedButton")),
                ],
              ),
            ),
            Container(
                child: Column(
              children: [
                Text("ini adalah text button"),
                TextButton(onPressed: () {}, child: const Text("Text Button"))
              ],
            )),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text("Ini adalah OutlineButton"),
                  OutlinedButton(
                      onPressed: () {}, child: Text("outlineButton")),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("IconButton"),
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
              child: Column(
                children: [
                  Text('ini drop down, (ongoing)'),
                  // klik tombol untuk ke page dropdown
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Down()));
                      },
                      child: Text(("Pindah ke latihan DropDown")))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
