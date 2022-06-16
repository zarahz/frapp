import 'package:flutter/material.dart';
import 'package:frapp/SwipeCard/content.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class ClickableContent extends StatefulWidget {
  final String text;
  final String translation;

  const ClickableContent(
      {Key? key, required this.text, required this.translation})
      : super(key: key);

  @override
  State<ClickableContent> createState() => _ClickableContentState();
}

class _ClickableContentState extends State<ClickableContent> {
  // final String translation = "testing worked!";
  // final String text = "test";
  bool showTranslation = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            showTranslation = !showTranslation;
          });
        },
        child: Container(
          width: 500.0,
          padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
          color: !showTranslation ? Colors.teal[200] : Colors.purple[200],
          child: Column(children: [
            Text(
              !showTranslation ? widget.text : widget.translation,
              style: const TextStyle(fontSize: 100),
            ),
          ]),
        ));
  }
}
