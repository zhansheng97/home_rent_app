import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';
import 'package:home_rent_app/detail/components/back_and_3d_button.dart';
import 'package:home_rent_app/detail/components/card_title_and_address.dart';
import 'package:home_rent_app/detail/components/custom_more_house_small_card.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22.0),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/modern-house.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackAnd3dButton(),
                    CardTitleAndAddress(),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: CustomMoreHouseSmallCard(),
            ),
          ],
        ),
      ),
    );
  }
}
