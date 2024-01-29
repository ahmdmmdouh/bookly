import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 3.6,
        ),
        Text('4.8'),
        SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: TextStyle(color: Color(0xff707070)),
        )
      ],
    );
  }
}
