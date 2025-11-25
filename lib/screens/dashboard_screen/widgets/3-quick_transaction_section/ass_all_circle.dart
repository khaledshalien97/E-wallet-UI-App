import 'package:dotted_border/dotted_border.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/report_screen/report_screen.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeeAllCircle extends StatelessWidget {
  const SeeAllCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReportScreen()),
            );
          },
          child: DottedBorder(
            options: const RoundedRectDottedBorderOptions(
              dashPattern: [8, 4],
              strokeWidth: 2,
              radius: Radius.circular(100),
              color: Color(0xff606060),
            ),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SvgPicture.asset("asset/svg_images/chevron-right.svg"),
              ),
            ),
          ),
        ),
        SizedBox(height: 7),
        commonTextWidget(
          text: "See All",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppTheme.mediumGray,
        ),
      ],
    );
  }
}
