import 'package:e_wallet_app/screens/dashboard_screen/widgets/1-balance_card_section/balance_card_section.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/2-action_card_section/action_card_section.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/3-quick_transaction_section/quick_transaction_section.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/4-recent_activity_section/recent_activity_section.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/appbar_dashboard.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDashboard(),

      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.fromLTRB(15, 40, 15, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BalanceCardSection(),
            ActionCardSection(),
            QuickTransactionSection(),
            RecentActivitySection(),
          ],
        ),
      ),
    );
  }
}
