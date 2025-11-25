import 'package:e_wallet_app/model/quick_transaction_model.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/3-quick_transaction_section/ass_all_circle.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/3-quick_transaction_section/user_item_circle.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';


class QuickTransactionSection extends StatelessWidget {
  const QuickTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        commonTextWidgetClashFont(
          text: "Quick Transaction",
          fontSize: 18,
          color: AppTheme.textWhite,
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: QuickTransactionModel.quickTransData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    index == 0
                        ? SeeAllCircle()
                        : UserItemCircle(
                            name: QuickTransactionModel
                                .quickTransData[index]
                                .name,
                          ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
