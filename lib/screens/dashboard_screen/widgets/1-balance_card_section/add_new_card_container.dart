import 'package:dotted_border/dotted_border.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCardContainer extends StatelessWidget {
  const AddNewCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: const RoundedRectDottedBorderOptions(
        dashPattern: [8, 6],
        strokeWidth: 2,
        radius: Radius.circular(12),
        color: AppTheme.mediumGray,
      ),
      child: Container(
        height: 180,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SvgPicture.asset("asset/svg_images/add.svg"),
        ),
      ),
    );
  }
}