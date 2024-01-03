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
          title: const Text("Flex dan Expand"),
        ),
        body: SafeArea(
          child: Column(
            children: const [
              Row(
                children: const [
                  ExpandedWidget(),
                  FlexibleWidget(),
                ],
              ),
              Row(
                children: const [
                  ExpandedWidget(),
                  ExpandedWidget(),
                ],
              ),
              Row(
                children: const [
                  FlexExpand(),
                  FlexExpand(),
                ],
              ),
              Row(
                children: const [
                  FlexibleWidget(),
                  ExpandedWidget(),
                ],
              )
            ],
          ),
        ));
  }
}

// Expanded
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Expanded',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    ));
  }
}

// Flexible
class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Flexible',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
              ),
            ),
          )),
    );
  }
}
