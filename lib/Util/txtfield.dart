import 'package:flutter/material.dart';

class Txtfield extends StatelessWidget {
  final TextEditingController co;
  final String label;
  final int maxline = 0;
  const Txtfield({
    super.key,
    required this.co,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: TextField(
          controller: co,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple.shade200)),
            label: Text(label),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ));
  }
}
