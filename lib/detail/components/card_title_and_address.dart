import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';

class CardTitleAndAddress extends StatelessWidget {
  const CardTitleAndAddress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text(
                  "Black Modern House",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding),
        Text(
          "Broadway Street, New york",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: kDefaultPadding / 2),
      ],
    );
  }
}
