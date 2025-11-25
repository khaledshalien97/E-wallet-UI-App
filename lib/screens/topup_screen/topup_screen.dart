import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/screens/common_widgets/common_button_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_field.dart';
import 'package:e_wallet_app/screens/topup_screen/widgets/other_nominal_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: "Top Up",
        viewleading: true,
        viewAction: false,
        onPressed: () {
          Navigator.pop(context);
        },
      ),

      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.fromLTRB(15, 20, 15, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonTextFieldWidget(
              label: "Destination transfer",
              hint: "Manga Love",
              maxLines: 1,
              prefixIcon: CircleAvatar(backgroundColor: AppTheme.lightGray),
              suffixIcon: SvgPicture.asset("asset/svg_images/chevron-left.svg"),
              viewprefixIcon: true,
            ),
            SizedBox(height: 13),
            CommonTextFieldWidget(
              label: "ID account",
              hint: "3225-4385",
              maxLines: 1,
              suffixIcon: SvgPicture.asset("asset/svg_images/check.svg"),
              viewprefixIcon: false,
            ),
            SizedBox(height: 24),
            CommonTextFieldWidget(
              label: "How much do you wan to top up?",
              hint: "\$ 5.00",
              maxLines: 1,
              suffixIcon: SvgPicture.asset("asset/svg_images/check.svg"),
              viewprefixIcon: false,
            ),
            SizedBox(height: 29),

            OtherNominal(),
            SizedBox(height: 60),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("asset/svg_images/check.svg"),
                SizedBox(width: 10),
                SizedBox(
                  width: 300,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "Top transaction policies and conditions You may read about it ",
                          style: TextStyle(color: AppTheme.mediumGray),
                        ),
                        TextSpan(
                          text: "here",
                          style: TextStyle(color: AppTheme.primaryGreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
        child: commonButtonWidget(context, "Top Up", () {}),
      ),
    );
  }
}
