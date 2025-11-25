import 'package:e_wallet_app/model/recent_activity_model.dart';
import 'package:e_wallet_app/screens/common_widgets/common_list_tile_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            commonTextWidgetClashFont(
              text: "Recent Activity",
              fontSize: 18,
              color: AppTheme.textWhite,
            ),
            Row(
              children: [
                commonTextWidget(
                  text: "3 Days",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.mediumGray,
                ),
                Icon(Icons.keyboard_arrow_down, color: AppTheme.mediumGray),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: RecentActivityDataModel.recentActData.length,
            itemBuilder: (context, index) {
              var data = RecentActivityDataModel.recentActData[index];
              return commonListTileWidget(
                index: index,
                title: data.name,
                subTitle: data.date,
                trailing: data.amount,
              );
            },
          ),
        ),
      ],
    );
  }
}
