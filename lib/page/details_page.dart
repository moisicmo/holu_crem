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
  const DetailPage({Key? key, required this.cake}) : super(key: key);

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
            Positioned(
              bottom: 0,
              right: 0,
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
                  SizedBox(
                    width: 360.0,
                    height: 200,
                    child: ListView(
                      padding: EdgeInsets.only(bottom: 50.0),
                      physics: BouncingScrollPhysics(),
                      children: [
                        ReadMoreText(
                          widget.cake.destription,
                          trimLines: 7,
                          trimMode: TrimMode.Line,
                          colorClickableText: mainColor,
                          style: TextStyle(
                            color: black.withOpacity(0.5),
                            height: 1.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 60.0,
                    width: 360.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
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
            CustomAppBar(),
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
          color: iconColor != null ? iconColor : white,
          size: 15,
        ),
      ),
    );
  }
}
