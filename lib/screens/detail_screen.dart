import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:snicil_real_state/styles/assets.dart';
import 'package:snicil_real_state/styles/color.dart';
import 'package:snicil_real_state/styles/typography.dart';
import 'package:snicil_real_state/widgets/card_facilities.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _titleRatingSection() {
      return Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Modern House',
                style: blackText.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              Text(
                'KBP Bandung, Indonesia',
                style: greyText,
              ),
            ],
          ),
          const Spacer(),
          RatingBarIndicator(
            rating: 4.5,
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
      );
    }

    Widget _contactPersonSection() {
      return Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(avatar),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'De Kezia',
                style: blackText.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'House Owner',
                style: greyText.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(message, width: 30),
          const SizedBox(width: 10),
          Image.asset(call, width: 30),
        ],
      );
    }

    Widget _facilitiesSection() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CardFacilities(
              image: thumbnailHouse1,
              text: 'Swimming Pool',
            ),
            CardFacilities(
              image: thumbnailHouse2,
              text: '4 Bedroom',
            ),
            CardFacilities(
              image: thumbnailHouse3,
              text: 'Garage',
            ),
          ],
        ),
      );
    }

    Widget _bottomNavbar() {
      return Container(
        height: 100,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: greyText.copyWith(fontWeight: semibold),
                  ),
                  Text(
                    '\$7,500',
                    style: purpleText.copyWith(fontSize: 20, fontWeight: bold),
                  ),
                ],
              ),
            ),
            const Spacer(),
            MaterialButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 15),
              color: purpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.5),
              ),
              child: Text(
                'Book Now',
                style: whiteText.copyWith(fontSize: 16, fontWeight: semibold),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _bottomNavbar(),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              popularHouse1,
              width: double.infinity,
              height: 296,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(top: 266),
              padding: const EdgeInsets.only(right: 30, top: 20, left: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  _titleRatingSection(),
                  const SizedBox(height: 24),
                  Text(
                    'Listing Agent',
                    style: blackText.copyWith(fontWeight: semibold),
                  ),
                  const SizedBox(height: 10),
                  _contactPersonSection(),
                  const SizedBox(height: 24),
                  Text(
                    'House Facilities',
                    style: blackText.copyWith(fontWeight: semibold),
                  ),
                  const SizedBox(height: 10),
                  _facilitiesSection(),
                  const SizedBox(height: 24),
                  Text(
                    'Description',
                    style: blackText.copyWith(fontWeight: semibold),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Luxury homes at affordable prices with Bandung\'s hilly atmosphere. Located in a strategic location, flood free.',
                      style: greyText.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(top: 20, left: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(back),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
