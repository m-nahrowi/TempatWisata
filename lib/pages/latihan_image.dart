import 'package:flutter/material.dart';

class LatihanImage extends StatelessWidget {
  const LatihanImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("image"),
      ),
      body: Column(
        children: [
          // image network
          const Text("image network"),
          Center(
            child: Image.network(
              'https://picsum.photos/200/300',
              width: 200.0,
              height: 200.0,
            ),
          ),
          // image asset
          const Text('image dengan Asset'),
          Image.asset('images/hans.jpg', width: 200, height: 200,),
        ],
      ),
    );
  }
}
