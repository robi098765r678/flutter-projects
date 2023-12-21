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
            BasicCard(
                title: "Test",
                image: "https://freepngimg.com/thumb/cat/1-2-cat-png-2.png"),
            Statistics(given: 100, taken: 133, score: 132)
            //TODO: put it all together.
          ],
        ),
      ),
    );
  }
}
