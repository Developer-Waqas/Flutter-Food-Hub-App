import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_button/custom_button_3.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../constants/app_colors/app_color.dart';
import '../../../constants/app_styles/app_style.dart';
import '../../../utilities/routes_name/routes_name.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String verificationID;

  VerifyCodeScreen({
    super.key,
    required this.verificationID,
  });

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  verifyUser() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationID,
        smsCode: otpController.text,
      );
      try {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.mainScreen, (route) => false);
        });
      } catch (e) {
        setState(() {
          loading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              e.toString(),
            ),
          ),
        );
      }
    }
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/img.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, RoutesName.forgotPassword);
                },
                icon: Icon(
                  CupertinoIcons.back,
                  color: black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Verification Code',
                    style: headingStyle5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Please type the verification code sent to\nyour Phone Number',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SofiaRegular',
                        color: Color(0xff9796A1)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  PinCodeTextField(
                    appContext: context,
                    cursorColor: splashColor,
                    enablePinAutofill: true,
                    textStyle: TextStyle(
                      fontFamily: 'SofiaSemiBold',
                      color: splashColor,
                    ),
                    controller: otpController,
                    length: 6,
                    keyboardType: TextInputType.number,
                    enabled: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      inactiveColor: Color(0xffEEEEEE),
                      activeColor: Color(0xffEEEEEE),
                      selectedColor: splashColor,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter 6 digit OTP';
                      } else if (value.length < 6) {
                        return 'OTP should be 6 digit ';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomButton3(
              height: 50,
              width: 250,
              borderRadius: BorderRadius.circular(28.41),
              color: splashColor,
              text: 'VERIFY',
              onTap: verifyUser,
              loading: loading,
              style: TextStyle(
                fontFamily: 'SofiaMedium',
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
