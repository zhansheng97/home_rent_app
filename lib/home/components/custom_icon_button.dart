import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String svgSrc;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomIconButton({
    Key key,
    @required this.svgSrc,
    @required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: isSelected
            ? BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8.0),
              )
            : null,
        child: SvgPicture.asset(
          svgSrc,
          height: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
