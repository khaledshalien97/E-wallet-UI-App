import 'package:e_wallet_app/screens/dashboard_screen/widgets/1-balance_card_section/add_new_card_container.dart';
import 'package:e_wallet_app/screens/dashboard_screen/widgets/1-balance_card_section/balance_card_container.dart';
import 'package:flutter/material.dart';

class BalanceCardSection extends StatelessWidget {
  const BalanceCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [Expanded(
        flex: 14,
        child: BalanceCardContainer()), Spacer(), AddNewCardContainer()],
    );
  }
}
