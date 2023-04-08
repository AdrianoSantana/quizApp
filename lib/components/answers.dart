import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answers extends StatelessWidget {
  final String answer;
  const Answers({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(answer),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
      ),
    );
  }
}
