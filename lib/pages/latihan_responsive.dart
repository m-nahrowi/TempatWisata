import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveLayout());
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout'),
      ),
      body: Column(children: [
        Center(
          child: Text("wait"),
        )
      ]),
    );
  }
}
