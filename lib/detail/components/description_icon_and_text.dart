import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_rent_app/constants.dart';

class DesciptionIconAndText extends StatelessWidget {
  final String svgSrc, title;
  final int quantity;

  const DesciptionIconAndText({
    Key key,
    @required this.svgSrc,
    @required this.title,
    @required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(kDefaultPadding / 1.5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.1),
                offset: Offset(5, 5),
                blurRadius: 10,
              ),
            ],
          ),
          child: SvgPicture.asset(
            svgSrc,
            height: 20,
            color: kBlueColor,
          ),
        ),
        const SizedBox(width: kDefaultPadding),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 12.0),
            ),
            const SizedBox(height: 5),
            Text(
              "$quantity Rooms",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ],
    );
  }
}
