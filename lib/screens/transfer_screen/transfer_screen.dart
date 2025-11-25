import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/screens/common_widgets/common_button_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_field.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/screens/common_widgets/key_button.dart';
import 'package:e_wallet_app/screens/transfer_completed_screen/transfer_completed_screen.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: "Transfer",
        viewleading: true,
        viewAction: false,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.fromLTRB(15, 20, 15, 5),
        child: Column(
          children: [
            CommonTextFieldWidget(
              label: "Number Bank",
              hint: "8247-3874-2387-0123",
              maxLines: 1,
              prefixIcon: CircleAvatar(backgroundColor: AppTheme.lightGray),
              suffixIcon: SvgPicture.asset("asset/svg_images/check.svg"),
              viewprefixIcon: false,
            ),
            SizedBox(height: 17),
            CommonTextFieldWidget(
              label: "Choose Bank",
              hint: "Digital Bank",
              maxLines: 1,
              prefixIcon: SvgPicture.asset("asset/svg_images/Wallet.svg"),
              suffixIcon: SvgPicture.asset("asset/svg_images/chevron-left.svg"),
              viewprefixIcon: true,
            ),
            SizedBox(height: 17),
            CommonTextFieldWidget(
              label: "Message",
              hint: "Type message here...",
              maxLines: 7,
              viewprefixIcon: false,
            ),
            SizedBox(height: 35),
            commonTextWidget(
              text: "Enter your amount",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppTheme.mediumGray,
            ),
            SizedBox(height: 16),
            commonTextWidgetClashFont(
              text: "\$24,734.00",
              fontSize: 36,
              color: AppTheme.textWhite,
            ),
            SizedBox(height: 35),
            _buildKeypad(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: commonButtonWidget(context, "Click to transfer", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransferCompletedScreen(),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildKeypad() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KeyButton(label: '1', onTap: () => {}),
            KeyButton(label: '2', onTap: () => {}),
            KeyButton(label: '3', onTap: () => {}),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KeyButton(label: '4', onTap: () => {}),
            KeyButton(label: '5', onTap: () => {}),
            KeyButton(label: '6', onTap: () => {}),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KeyButton(label: '7', onTap: () => {}),
            KeyButton(label: '8', onTap: () => {}),
            KeyButton(label: '9', onTap: () => {}),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KeyButton(label: "."),
            KeyButton(label: "0", onTap: () => {}),
            KeyButton(icon: Icons.backspace_outlined, onTap: () => {}),
          ],
        ),
      ],
    );
  }
}
