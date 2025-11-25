import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

String _formatAmount(double value) {
  final sign = value >= 0 ? "+" : "-";
  final abs = value.abs().toStringAsFixed(2);
  return "$sign \$$abs";
}

ListTile commonListTileWidget({
  required int index,
  required String title,
  required String subTitle,
  required double trailing,
}) {
  return ListTile(
    contentPadding: EdgeInsets.all(0),
    title: commonTextWidget(
      text: title,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppTheme.textWhite,
    ),
    subtitle: commonTextWidget(
      text: subTitle,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppTheme.mediumGray,
    ),
    leading: CircleAvatar(maxRadius: 35, backgroundColor: AppTheme.lightGray),
    trailing: commonTextWidget(
      text: _formatAmount(trailing),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: trailing >= 0 ? AppTheme.primaryGreen : AppTheme.redColor,
    ),
  );
}
