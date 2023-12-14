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
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Image.network(image),
        subtitle: const Row(
          children: [
            Icon(Icons.thumb_up),
            SizedBox(width: 10),
            Icon(Icons.thumb_down),
            SizedBox(width: 10),
            Icon(Icons.comment),
          ],
        ),
      ),
    );
  }
}
