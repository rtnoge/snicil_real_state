import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:snicil_real_state/screens/detail_screen.dart';
import 'package:snicil_real_state/styles/assets.dart';
import 'package:snicil_real_state/styles/color.dart';
import 'package:snicil_real_state/styles/typography.dart';

class ListRecommended extends StatelessWidget {
  final String image, title, location;
  final double rating;

  const ListRecommended({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailScreen(),
        ),
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: shadow.withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 15,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                image,
                width: 60,
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackText.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  location,
                  style: greyText.copyWith(
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 8),
                RatingBarIndicator(
                  rating: rating,
                  itemBuilder: (context, index) => Image.asset(
                    fullRating,
                    color: fullRatingColor,
                  ),
                  itemCount: 5,
                  itemSize: 12,
                  itemPadding: const EdgeInsets.only(right: 2),
                  unratedColor: noRatingColor,
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
