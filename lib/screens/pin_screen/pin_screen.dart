import 'dart:ui';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/key_button.dart';
import 'package:e_wallet_app/screens/dashboard_screen/dashboard_screen.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final TextEditingController _pinCtrl = TextEditingController();
  bool _showPin = false;

  void _onKeyTap(String value) {
    setState(() {
      if (value == 'del') {
        if (_pinCtrl.text.isNotEmpty) {
          _pinCtrl.text = _pinCtrl.text.substring(0, _pinCtrl.text.length - 1);
        }
      } else if (_pinCtrl.text.length < 6) {
        _pinCtrl.text += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, leading: SizedBox()),
      body: Stack(
        children: [
          Positioned(
            top: 10,
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

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 40),
              child: Column(
                children: [
                  commonTextWidget(
                    text: "Enter Your Pin",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.mediumGray,
                  ),
                  const SizedBox(height: 16),

                  // PIN (hidden as stars)
                  SizedBox(
                    width: 250,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _pinCtrl,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        letterSpacing: 8,
                        fontFamily: "ClashDisplay"
                      ),
                      maxLength: 6,
                      obscureText: !_showPin,
                      obscuringCharacter: "✱",
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      side: const BorderSide(
                        color: AppTheme.mediumGray,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _showPin = !_showPin;
                      });
                    },
                    child: Text(
                      !_showPin ? "Show" : "Hide",
                      style: const TextStyle(
                        color: AppTheme.mediumGray,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(height: 60),

                  _buildKeypad(),

                  Spacer(),
                  // Forget Pin?
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ),
                      );
                    },
                    child: commonTextWidget(
                      text: "Forget Pin?",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.primaryGreen,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildKeypad() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyButton(label: '1', onTap: () => _onKeyTap('1')),
              KeyButton(label: '2', onTap: () => _onKeyTap('2')),
              KeyButton(label: '3', onTap: () => _onKeyTap('3')),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyButton(label: '4', onTap: () => _onKeyTap('4')),
              KeyButton(label: '5', onTap: () => _onKeyTap('5')),
              KeyButton(label: '6', onTap: () => _onKeyTap('6')),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyButton(label: '7', onTap: () => _onKeyTap('7')),
              KeyButton(label: '8', onTap: () => _onKeyTap('8')),
              KeyButton(label: '9', onTap: () => _onKeyTap('9')),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyButton(label: "", icon: Icons.fingerprint),
              KeyButton(label: "0", onTap: () => _onKeyTap('0')),
              KeyButton(
                icon: Icons.backspace_outlined,
                onTap: () => _onKeyTap('del'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
