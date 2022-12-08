import 'package:flutter/material.dart';
import 'package:snicil_real_state/styles/assets.dart';
import 'package:snicil_real_state/styles/color.dart';
import 'package:snicil_real_state/styles/typography.dart';
import 'package:snicil_real_state/widgets/card_popular.dart';
import 'package:snicil_real_state/widgets/list_recommended.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              navbar,
              width: 30,
            ),
            const SizedBox(height: 20),
            Text(
              'Temukan\nRumah Impian',
              style: blackText.copyWith(
                fontSize: 30,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget _search() {
      return Container(
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
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
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Find your dream home',
                    hintStyle: greyText,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(search),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget _popularSection() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 30),
            CardPopular(
              image: popularHouse1,
              title: 'Modern House',
              location: 'Bandung',
              rating: 4.5,
            ),
            CardPopular(
              image: popularHouse2,
              title: 'White House',
              location: 'Jakarta',
              rating: 5,
            ),
          ],
        ),
      );
    }

    Widget _recommendedSection() {
      return Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended For You',
              style: blackText.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(height: 12),
            ListRecommended(
              image: recommendedHouse1,
              title: 'Wooden House',
              location: 'Bandung',
              rating: 4,
            ),
            ListRecommended(
              image: recommendedHouse2,
              title: 'Triangle House',
              location: 'Bogor',
              rating: 3.5,
            ),
            ListRecommended(
              image: recommendedHouse3,
              title: 'Hill House',
              location: 'Makassar',
              rating: 4.2,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            _search(),
            _popularSection(),
            _recommendedSection(),
          ],
        ),
      ),
    );
  }
}
