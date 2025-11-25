import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

Row balanceAndMonthly() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commonTextWidget(
            text: "Balance",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppTheme.mediumGray,
          ),
          SizedBox(height: 6),
          commonTextWidgetClashFont(
            text: "\$34,378,44",
            fontSize: 26,
            color: AppTheme.textWhite,
          ),
        ],
      ),
      Row(
        children: [
          commonTextWidget(
            text: "Monthly",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppTheme.mediumGray,
          ),
          SizedBox(width: 4),
          Icon(Icons.keyboard_arrow_down, color: Colors.white70),
        ],
      ),
    ],
  );
}
