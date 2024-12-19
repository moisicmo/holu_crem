import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:holu_crem/core/color.dart';
import 'package:holu_crem/core/text_style.dart';
import 'package:holu_crem/data/items.dart';
import 'package:holu_crem/widget/custom_app_bar.dart';
import 'package:holu_crem/widget/rating_bar.dart';
import 'package:holu_crem/widget/round_btn.dart';

class DetailPage extends StatefulWidget {
  final Cakes cake;
  const DetailPage({super.key, required this.cake});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: height / 2,
                width: 360.0,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35.0),
                  child: Image.asset(
                    widget.cake.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cake.name,
                    style: txtHeading.copyWith(
                      color: black,
                      fontSize: 22.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      StarRating(rating: widget.cake.rating),
                      Text('${widget.cake.rating}'),
                      const SizedBox(width: 120.0),
                      miniButton(
                        onTap: () {
                          if (qty > 1) setState(() => qty--);
                        },
                        icon: Icons.minimize_outlined,
                        iconColor: mainColor,
                        bgColor: pink01,
                      ),
                      Text(
                        qty > 9 ? '$qty' : '0$qty',
                        style: txtItemCard.copyWith(color: mainColor),
                      ),
                      miniButton(
                        onTap: () {
                          setState(() => qty++);
                        },
                        icon: Icons.add,
                        bgColor: mainColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  ListView(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      physics: const BouncingScrollPhysics(),
                      children: [
                        ReadMoreText(
                          widget.cake.destription,
                          trimLines: 7,
                          trimMode: TrimMode.Line,
                          colorClickableText: mainColor,
                          style: TextStyle(
                            // ignore: deprecated_member_use
                            color: black.withOpacity(0.5),
                            height: 1.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                   Switch(
      // This bool value toggles the switch.
      value: true,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        // setState(() {
        //   light = value;
        // });
      },
    ),

                  const SizedBox(height: 20.0),
                  Container(
                    height: 60.0,
                    width: 360.0,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: const BoxDecoration(
                      color: pink01,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Agregar al carrito',
                          style: txtBtnCategory.copyWith(color: mainColor),
                        ),
                        roundButton(
                          text: 'Bs. ${widget.cake.price}',
                          fontsize: 14,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }

  Widget miniButton({
    required Function() onTap,
    required Color bgColor,
    required IconData icon,
    Color? iconColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: bgColor,
        radius: 12.0,
        child: Icon(
          icon,
          color: iconColor ?? white,
          size: 15,
        ),
      ),
    );
  }
}
