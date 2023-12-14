// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  Statistics({
    super.key,
    required this.given,
    required this.taken,
    required this.score,
  });

  int given;
  int taken;
  int score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello!\nHere are your statistics:'),
              Text('Meows given: $given'),
              Text('Meows taken: $taken'),
              Text('Overall score: $score'),
            ],
          ),
          Container(
            height: 100,
            child: Image.network(
                'https://freepngimg.com/thumb/cat/1-2-cat-png-2.png'),
          ),
        ],
      ),
    );
  }
}
