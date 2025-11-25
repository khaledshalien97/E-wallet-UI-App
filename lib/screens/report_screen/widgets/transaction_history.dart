import 'package:e_wallet_app/model/transaction_history_model.dart';
import 'package:e_wallet_app/screens/common_widgets/common_list_tile_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

Column transactionHistory() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          commonTextWidgetClashFont(
            text: "Transaction History",
            fontSize: 18,
            color: AppTheme.textWhite,
          ),
          Row(
            children: [
              commonTextWidget(
                text: "Monthly",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppTheme.mediumGray,
              ),
              SizedBox(width: 4),
              Icon(Icons.keyboard_arrow_down, color: Colors.white70),
            ],
          ),
        ],
      ),

      SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: TransactionHistoryDataModel.transactionData.length,
          itemBuilder: (context, index) {
            var data = TransactionHistoryDataModel.transactionData[index];
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
