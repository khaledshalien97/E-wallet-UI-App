import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextFieldWidget extends StatelessWidget {
  const CommonTextFieldWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    required this.viewprefixIcon,
  });
  final String label;
  final String hint;
  final int maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool viewprefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonTextWidget(
          text: label,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppTheme.mediumGray,
        ),
        SizedBox(height: 10),
        SizedBox(
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 16,
              ),
              fillColor: AppTheme.cardBlack,
              filled: true,
              hint: Text(hint),
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppTheme.textWhite,
              ),
              prefixIcon: viewprefixIcon
                  ? Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: prefixIcon,
                    )
                  : null,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: suffixIcon,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: AppTheme.boarderColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
