import 'package:flutter/material.dart';

void main() => runApp(DetailScreen());

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical : 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Every'),
                    ],
                  ),
                   Column(
                    children: const <Widget>[
                      Icon(Icons.access_alarm),
                      SizedBox(height: 8.0),
                      Text('09:00 - 20:00'),
                    ],
                  ),
                   Column(
                    children: const <Widget>[
                      Icon(Icons.money_off_csred),
                      SizedBox(height: 8.0),
                      Text('Open Everyday'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
