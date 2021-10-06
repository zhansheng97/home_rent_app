import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';
import 'package:home_rent_app/detail/components/description_icon_and_text.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
        ),
        const SizedBox(height: kDefaultPadding),
        Row(
          children: [
            DesciptionIconAndText(
              svgSrc: "assets/icons/bed.svg",
              quantity: 5,
              title: "BedRoom",
            ),
            const SizedBox(width: kDefaultPadding),
            DesciptionIconAndText(
              svgSrc: "assets/icons/bath.svg",
              quantity: 2,
              title: "BathRoom",
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding / 1.5),
        Text(
          "Simple house with modern architecture and cool interiors located in the city center making easier for you to access all over the city.",
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 16.0,
                height: 1.5,
                color: Colors.grey,
              ),
        ),
        // const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
