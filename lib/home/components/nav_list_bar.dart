import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';
import 'package:home_rent_app/home/components/custom_icon_button.dart';

class NavListBar extends StatefulWidget {
  const NavListBar({
    Key key,
  }) : super(key: key);

  @override
  _NavListBarState createState() => _NavListBarState();
}

class _NavListBarState extends State<NavListBar> {
  final List navItemList = [];
  var currentSelectedItem = "home";

  final bottomNavBarItems = {
    "home": "assets/icons/home.svg",
    "favourite": "assets/icons/heart.svg",
    "cart": "assets/icons/shopping-cart.svg",
    "user": "assets/icons/user.svg",
  };

  List navList() {
    bottomNavBarItems.forEach((key, value) {
      var navItem = CustomIconButton(
        svgSrc: value,
        onTap: () {
          changeSelectItem(key);
        },
        isSelected: key == currentSelectedItem,
      );
      navItemList.add(navItem);
    });
    return navItemList;
  }

  changeSelectItem(String key) {
    setState(() {
      currentSelectedItem = key;
      navItemList.clear();
      navList();
    });
  }

  @override
  void initState() {
    navList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 2),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // for (var item in bottomNavBarItems.values)
          //   CustomIconButton(
          //     onTap: () {},
          //     svgSrc: item,
          //   ),
          ...navItemList
        ],
      ),
    );
  }
}
