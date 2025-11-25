import 'package:e_wallet_app/screens/common_widgets/common_text_widget_clash_font.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final VoidCallback? onTap;
  const KeyButton({super.key, this.label, this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        
        onTap: onTap,
        child: Container(
        margin: EdgeInsets.only(right: 10),
     
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFF141414),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: icon != null
                ? Icon(icon, color: Colors.white, size: 28)
               : commonTextWidgetClashFont(
                text:  label ?? '',
                fontSize: 32,
                color: AppTheme.textWhite
               )
              
          ),
        ),
      ),
    );
  }
}
