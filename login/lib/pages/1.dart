import 'package:flutter/material.dart';

class aaa extends StatelessWidget {
  const aaa({super.key});

  Widget cerc() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        cerc(),
        cerc(),
        Spacer(),
        Spacer(),
        cerc(),
        Spacer(),
        cerc(),
        cerc(),
        Spacer(),
      ]),
    );
  }
}
