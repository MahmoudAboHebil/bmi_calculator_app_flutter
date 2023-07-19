import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour, this.cardChild);
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}
