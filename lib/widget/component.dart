import 'package:flutter/material.dart';

class ComponentCustom extends StatelessWidget {
  const ComponentCustom(
      {super.key, required this.text, required this.iconData});
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(169, 158, 158, 158),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              size: 40,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
