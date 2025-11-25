import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class UserItemCircle extends StatelessWidget {
  const UserItemCircle({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(maxRadius: 35, backgroundColor: AppTheme.lightGray),
        SizedBox(height: 7),
        commonTextWidget(
          text: name,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppTheme.mediumGray,
        ),
      ],
    );
  }
}
