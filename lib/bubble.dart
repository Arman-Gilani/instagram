import 'package:flutter/material.dart';
class Bubble extends StatefulWidget {
  const Bubble({Key? key,required this.text}) : super(key: key);

  final String text;

  @override
  State<Bubble> createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [

          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlueAccent,
            ),
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}