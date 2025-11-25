import 'dart:ui';
import 'package:e_wallet_app/screens/common_widgets/common_button_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/screens/pin_screen/pin_screen.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF35E97E).withOpacity(0.6),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(color: Colors.transparent),
                  ),
                ),

                Positioned(
                  top: 150,
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff139E8D).withOpacity(0.6),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(color: Colors.transparent),
                  ),
                ),
                Positioned(
                  child: SvgPicture.asset("asset/svg_images/Element.svg"),
                ),
                Positioned(
                  child: SvgPicture.asset(
                    "asset/svg_images/Card.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                commonTextWidgetClashFont(
                  text: "Fast and easy payment solution",
                  fontSize: 36,
                  color: AppTheme.textWhite,
                ),
                SizedBox(height: 16),
                commonTextWidget(
                  text:
                      "Spending methods and financial management through digital banks",
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.mediumGray,
                ),
                
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
        child: commonButtonWidget(context, "Get Started", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PinScreen()),
          );
        }),
      ),
    );
  }
}
