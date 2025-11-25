import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OtherNominal extends StatelessWidget {
  const OtherNominal({super.key});

  final List<String> amounts = const [
    "\$ 5.00",
    "\$ 10.00",
    "\$ 15.00",
    "\$ 20.00",
    "\$ 25.00",
    "\$ 30.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonTextWidget(
          text: "Other nominal",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppTheme.mediumGray,
        ),
        SizedBox(height: 24),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 50,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.cardBlack,
                borderRadius: BorderRadius.circular(6),
                border: BoxBorder.all(color: AppTheme.boarderColor),
              ),
              child: Center(child: commonTextWidget(text:amounts[index],fontSize: 14,fontWeight: FontWeight.w400 )),
           //   child: Center(child: Text("amounts[index]")),
            );
          },
        ),
      ],
    );
  }
}
