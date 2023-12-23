import 'package:flutter/material.dart';

class aaa extends StatelessWidget {
  const aaa({super.key});

  Widget a() {
    return Row(children: [
      cerc(),
      SizedBox(width: 10),
      cerc(),
      Spacer(),
      Spacer(),
      cerc(),
      Spacer(),
      cerc(),
      SizedBox(width: 10),
      cerc(),
      Spacer(),
    ]);
  }

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            a(),
            SizedBox(height: 15),
            Spacer(),
            a(),
            Spacer(),
            SizedBox(height: 15),
            a(),
          ],
        ),
      ),
    );
  }
}
