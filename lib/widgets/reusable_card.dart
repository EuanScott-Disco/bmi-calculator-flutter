import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.colour,
    this.borderColour,
    this.cardContent,
    this.onPress,
  });

  final Color colour;
  final Color borderColour;
  final Widget cardContent;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        margin: EdgeInsets.all(15.0),
        color: colour,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: cardContent,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColour != null ? borderColour : colour,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
