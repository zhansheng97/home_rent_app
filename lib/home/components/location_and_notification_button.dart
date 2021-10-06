import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_rent_app/constants.dart';

class LocationAndNotificationButton extends StatelessWidget {
  const LocationAndNotificationButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Location",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: kLightTextColor),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: kBlueColor,
                      size: 26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPadding / 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: kBlueColor,
                    size: 24.0,
                  ),
                  const SizedBox(width: kDefaultPadding / 2),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Bali, ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "Indonesia"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 5),
                color: Colors.black12.withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: SvgPicture.asset(
            "assets/icons/bell.svg",
            height: 24,
            color: kLightTextColor,
          ),
        ),
      ],
    );
  }
}
