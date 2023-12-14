import 'package:exercitii_club_flutter/pages/home_page.dart';
import 'package:exercitii_club_flutter/widgets/basic_card.dart';
import 'package:exercitii_club_flutter/widgets/statistics.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Storybook(stories: [
        Story(
          name: 'Basic Card',
          builder: (context) => BasicCard(
            title: context.knobs.text(label: 'Title', initial: 'Fuzzy Wuzzy'),
            image: context.knobs.text(
              label: 'Image URL',
              initial: 'https://freepngimg.com/thumb/cat/1-2-cat-png-2.png',
            ),
          ),
        ),
        Story(
          name: 'Statistics section ',
          builder: (context) => Statistics(
            given: context.knobs.sliderInt(label: 'Given', initial: 3),
            taken: context.knobs.sliderInt(label: 'Taken', initial: 9),
            score: context.knobs.sliderInt(label: 'Score', initial: 6),
          ),
        ),
        Story(
          name: 'Home Page',
          builder: (context) => const HomePage(),
        ),
      ]),
    );
  }
}
