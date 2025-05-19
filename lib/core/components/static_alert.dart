import 'package:flutter/material.dart';

class StaticAlert extends StatelessWidget {
  final String text;

  const StaticAlert({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xfffff3cd),
        borderRadius: BorderRadius.circular(5),
        border: const Border.fromBorderSide(BorderSide(color: Color(0xffffeebc))),
      ),
      child: Row(
        children: [
          const RotatedBox(
            quarterTurns: 2,
            child: Icon(Icons.info_outline_rounded, color: Color(0xff856404)),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Color(0xff856404)),
            ),
          ),
        ],
      ),
    );
  }
}
