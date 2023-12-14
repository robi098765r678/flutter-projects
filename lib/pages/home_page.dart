import 'package:exercitii_club_flutter/widgets/basic_card.dart';
import 'package:exercitii_club_flutter/widgets/statistics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Statistics(
              given: 3,
              taken: 20,
              score: 17,
            ),
            BasicCard(
              title: 'Meow Friend',
              image: 'https://freepngimg.com/thumb/cat/1-2-cat-png-2.png',
            ),
            BasicCard(
              title: 'Meow Friend',
              image: 'https://freepngimg.com/thumb/cat/1-2-cat-png-2.png',
            ),
            BasicCard(
              title: 'Meow Friend',
              image: 'https://freepngimg.com/thumb/cat/1-2-cat-png-2.png',
            ),
          ],
        ),
      ),
    );
  }
}
