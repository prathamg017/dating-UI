import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:internship/list.dart';

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  // int _index = data[index]

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
