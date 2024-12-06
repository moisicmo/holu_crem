import 'package:flutter/cupertino.dart';
import 'package:holu_crem/core/color.dart';

Widget roundButton({String? text, double? fontsize, double? height}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: height ?? 30.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Center(
        child: Text(
          text ?? 'Comprar',
          style: TextStyle(
            fontSize: fontsize ?? 11.0,
            color: white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
