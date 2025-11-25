import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BalanceCardContainer extends StatelessWidget {
  const BalanceCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 185,
      width: 300,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 1.3,
          center: Alignment(-0.7, 0.3),
          colors: [
            Color(0xff1D976C),
            Color(0xff51CE8F),
            Color(0xff239E70),
            Color(0xff50CD8E),
          ],
          stops: [0.0, 0.6, 0.89, 1.0],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
        
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              commonTextWidget(
                text: "Balance",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppTheme.textWhite,
              ),
              commonTextWidgetClashFont(
                text: "\$ 34,378,44",
                fontSize: 26,
                color: AppTheme.textWhite,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  commonTextWidget(
                    text: "Number",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textWhite,
                  ),
                  commonTextWidget(
                    text: "3554 7634 2647 0237",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textWhite,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  commonTextWidget(
                    text: "Exp",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textWhite,
                  ),
                  commonTextWidget(
                    text: "24/26",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textWhite,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

