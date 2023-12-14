// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {
  BasicCard({
    super.key,
    required this.title,
    required this.image,
  });

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    //TODO: implement basic card
    return Card();
  }
}
