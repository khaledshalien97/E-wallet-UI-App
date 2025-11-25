import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/screens/common_widgets/common_button_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransferCompletedScreen extends StatelessWidget {
  const TransferCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: "Transfer Completed",
        viewleading: false,
        viewAction: false,
        onPressed: () {},
      ),

      body: SingleChildScrollView(
       // padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            // logo Success
            SizedBox(
              width: 280,
              height: 280,
              child: SvgPicture.asset("asset/svg_images/success.svg")),
            SizedBox(height: 32),
            commonTextWidgetClashFont(
              text: "Transfer Successful",
              fontSize: 18,
              color: AppTheme.textWhite,
            ),
            SizedBox(height: 16),
            commonTextWidgetClashFont(
              text: "\$24,734.00",
              fontSize: 36,
              color: AppTheme.primaryGreen,
            ),
            SizedBox(height: 24),
            // transfer Message
            SizedBox(
              width: 300,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  children: const [
                    TextSpan(
                      text: "The transfer, ",
                      style: TextStyle(color: AppTheme.mediumGray),
                    ),
                    TextSpan(
                      text: "Sunday 12 April 2022 ",
                      style: TextStyle(color: AppTheme.textWhite),
                    ),
                    TextSpan(
                      text: "to ",
                      style: TextStyle(color: AppTheme.mediumGray),
                    ),
                    TextSpan(
                      text: "Khaled Shalien ",
                      style: TextStyle(color: AppTheme.textWhite),
                    ),
                    TextSpan(
                      text: "has been successful",
                      style: TextStyle(color: AppTheme.textWhite),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("asset/svg_images/Arrow_Down_Square.svg"),
                SizedBox(width: 10),
                commonTextWidget(
                  text: "Download Struk",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.textWhite,
                ),
              ],
            ),
            SizedBox(height: 65),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 24),
                child: commonButtonWidget(context, "Done", () {
                  Navigator.pop(context);
                }),
              ),
            ),
            commonTextWidgetClashFont(
              text: "Do you want to make another transfer?",
              fontSize: 14,
              color: AppTheme.primaryGreen,
            ),
          ],
        ),
      ),
    );
  }
}
