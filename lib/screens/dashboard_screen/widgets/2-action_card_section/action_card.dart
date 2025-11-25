import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onpress,
  });

  final String title;
  final String icon;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff141414),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 8),
            commonTextWidget(
              text: title,
             // googleFonts: GoogleFonts.poppins,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppTheme.textWhite,
            ),
          ],
        ),
      ),
    );
  }
}
