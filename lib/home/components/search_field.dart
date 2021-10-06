import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_rent_app/constants.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(kDefaultPadding / 2),
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
      child: Row(
        children: [
          const SizedBox(width: kDefaultPadding / 2),
          SizedBox(
            width: 20,
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              height: 20,
              color: kLightTextColor,
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 12),
                hintText: "Search House",
                hintStyle: Theme.of(context).textTheme.headline6.copyWith(
                      color: kLightTextColor,
                      fontWeight: FontWeight.normal,
                    ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          GestureDetector(
            onTap: () {
              print("Search House");
            },
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                color: kButtonColor,
              ),
              child: Icon(
                Icons.list,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
