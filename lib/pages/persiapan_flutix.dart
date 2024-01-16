import 'package:flutter/material.dart';
import 'package:tempat_wisata/main.dart';

void main() {
  runApp(const PersiapanFlutix());
}

class PersiapanFlutix extends StatelessWidget {
  const PersiapanFlutix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("persiapan Flutix"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // child: Column(
                  child: const Text('ini persiapan text '),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
