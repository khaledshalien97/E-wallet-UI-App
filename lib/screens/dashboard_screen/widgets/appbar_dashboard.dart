import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appbarDashboard() {
  return AppBar(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("asset/svg_images/Notification.svg"),
      ),
    ],
    leading: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SvgPicture.asset(
        "asset/svg_images/dashboard.svg",
        width: 15,
        height: 15,
      ),
    ),
    title: commonTextWidgetClashFont(
      text: "My Dashboard",
      fontSize: 18,
      color: AppTheme.textWhite,
    ),
  );
}
