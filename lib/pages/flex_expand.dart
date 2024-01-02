import 'package:flutter/material.dart';

void main() {
  runApp(const FlexExpand());
}

class FlexExpand extends StatelessWidget {
  const FlexExpand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex dan Expand"),

      ),
      body:SafeArea(child: Column(),)
    );
  }
}
