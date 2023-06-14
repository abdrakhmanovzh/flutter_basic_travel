import 'package:flutter/material.dart';
import 'package:flutter_travel_app/theme/colors.dart';
import 'package:flutter_travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double? width;

  const ResponsiveButton(
      {super.key, this.isResponsive = false, this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive
                ? Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const AppText(
                      text: "Book trip Now",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset("assets/images/button-one.png"),
          ],
        ),
      ),
    );
  }
}
