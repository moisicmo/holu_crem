import 'package:flutter/material.dart';
import 'package:holu_crem/core/color.dart';
import 'package:holu_crem/core/text_style.dart';
import 'package:holu_crem/data/items.dart';
import 'package:holu_crem/widget/circurl_btn.dart';
import 'package:holu_crem/widget/round_btn.dart';

class ItemCard extends StatelessWidget {
  final Cakes cake;
  const ItemCard({super.key, required this.cake});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      width: 250.0,
      padding: const EdgeInsets.only(bottom: 20.0, left: 10.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250.0,
              width: 250.0,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: blackShadow,
                    offset: Offset(0, 7),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cake.name,
                    // maxLines: 1,
                    style: txtItemCard,
                  ),
                  const SizedBox(height: 7.0),
                  Text(
                    'Sabor: ${cake.flavourl}',
                    maxLines: 1,
                    style: txtItemCard.copyWith(
                      fontSize: 14,
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
                              text: 'Bs ',
                              style: txtHeading.copyWith(fontSize: 12.0),
                            ),
                            TextSpan(
                              text: cake.price,
                              style: txtHeading.copyWith(fontSize: 17.0),
                            ),
                          ],
                        ),
                      ),
                      roundButton(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 130.0,
              width: 220.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  cake.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CircleButton(
              size: 30.0,
              iconColor: mainColor,
              onTap: () {},
              image: 'heart_full.svg',
            ),
          )
        ],
      ),
    );
  }
}
