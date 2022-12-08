import 'package:flutter/material.dart';
import 'package:snicil_real_state/styles/color.dart';
import 'package:snicil_real_state/styles/typography.dart';

class CardFacilities extends StatelessWidget {
  final String image, text;
  const CardFacilities({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: shadow.withOpacity(0.06),
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
            ),
            child: Image.asset(
              image,
              width: 100,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 11),
            child: Text(
              text,
              style: blackText.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
