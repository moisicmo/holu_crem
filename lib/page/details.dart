import 'package:flutter/material.dart';
import 'package:holu_crem/core/color.dart';
import 'package:holu_crem/core/text_style.dart';
import 'package:holu_crem/data/items.dart';
import 'package:holu_crem/widget/custom_app_bar.dart';
import 'package:holu_crem/widget/rating_bar.dart';
import 'package:holu_crem/widget/round_btn.dart';
import 'package:readmore/readmore.dart';

class Details extends StatefulWidget {
  final Cakes cake;
  const Details({super.key, required this.cake});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int qty = 1;
  String? selectedTaste;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CustomAppBar(),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                widget.cake.image,
                fit: BoxFit.fitWidth,
              ),
            ),
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
            ReadMoreText(
              widget.cake.destription,
              trimLines: 7,
              trimMode: TrimMode.Line,
              style: const TextStyle(
                height: 1.5,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Personaliza:',
              style: txtHeading.copyWith(
                color: black,
                fontSize: 18.0,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: widget.cake.tastes.map((option) {
                    return RadioListTile<String>(
                      title: Text(option),
                      value: option,
                      groupValue: selectedTaste,
                      activeColor: mainColor,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTaste = newValue;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 80)
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
