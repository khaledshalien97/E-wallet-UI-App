import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';


AppBar commonAppBar({
  required String title,
  required bool viewleading,
  required bool viewAction,
  List<Widget>? actions,
  required void Function()? onPressed,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    actions: actions,
    title: commonTextWidgetClashFont(
      text: title,
      fontSize: 18,
      color: AppTheme.textWhite,
    ),
    leading: viewleading
        ? IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios))
        : SizedBox(),
  );
}
