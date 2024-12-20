import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgCake extends StatefulWidget {
  const SvgCake({super.key});

  @override
  State<SvgCake> createState() => _SvgCakeState();
}

class _SvgCakeState extends State<SvgCake> {
  String selectedLayer = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTapDown: (details) {
            final touchPosition = details.localPosition;
            log('Touch Position: ${touchPosition.dy}');
            if (touchPosition.dy >= 0 && touchPosition.dy < 15) {
              setState(() => selectedLayer = 'relleno 1');
            } else if (touchPosition.dy >= 15 && touchPosition.dy < 65) {
              setState(() => selectedLayer = 'base 1');
            } else if (touchPosition.dy >= 65 && touchPosition.dy < 100) {
              setState(() => selectedLayer = 'relleno 2');
            } else if (touchPosition.dy >= 100 && touchPosition.dy < 141) {
              setState(() => selectedLayer = 'base 2');
            } else if (touchPosition.dy >= 141 && touchPosition.dy < 161) {
              setState(() => selectedLayer = 'relleno 3');
            } else if (touchPosition.dy >= 161 && touchPosition.dy < 192) {
              setState(() => selectedLayer = 'base 3');
            } else {
              setState(() => selectedLayer = '');
            }
          },
          child: SvgPicture.asset(
            'assets/products/cake1.svg', // Directamente desde assets
            semanticsLabel: 'Interactive Cake',
            height: 250,
          ),
        ),
        Text(
          selectedLayer,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
