import 'package:flutter/material.dart';
import 'package:holu_crem/core/color.dart';
import 'package:holu_crem/core/text_style.dart';
import 'package:holu_crem/data/items.dart';
import 'package:holu_crem/widget/round_btn.dart';

class ItemCard02 extends StatelessWidget {
  final Cakes cake;
  const ItemCard02({super.key, required this.cake});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80.0,
            width: 250.0,
            margin: const EdgeInsets.only(right: 15.0, left: 10.0),
            padding: const EdgeInsets.only(bottom: 20.0, left: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    color: blackShadow,
                    offset: Offset(0, 5),
                    blurRadius: 10,
                  )
                ]),
          ),
        ),
        Container(
          height: 100.0,
          width: 80.0,
          margin: const EdgeInsets.only(right: 15.0, left: 10.0),
          child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  cake.image,
                  fit: BoxFit.fitWidth,
                  scale: 2,
                ),
              ),
        ),
        Positioned(
          right: 25.0,
          bottom: 10.0,
          child: SizedBox(
            width: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cake.name,
                  maxLines: 1,
                  style: txtItemCard.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sabor: ${cake.flavourl}',
                  maxLines: 1,
                  style: txtItemCard.copyWith(
                    fontSize: 12,
                    color: grayColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Bs. ',
                            style: txtHeading.copyWith(fontSize: 10.0),
                          ),
                          TextSpan(
                            text: cake.price,
                            style: txtHeading.copyWith(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    roundButton(height: 20.0),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
