import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';

class CustomMoreHouseSmallCard extends StatelessWidget {
  const CustomMoreHouseSmallCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5.0),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(12.0)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              "assets/images/modern-house.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        Container(
          padding: EdgeInsets.all(5.0),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(12.0)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              "assets/images/modern-house.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    "assets/images/modern-house.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black38,
                  alignment: Alignment.center,
                  child: Text(
                    "+6",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1.3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
