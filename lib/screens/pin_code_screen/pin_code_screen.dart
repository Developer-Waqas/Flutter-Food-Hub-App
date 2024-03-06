import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/custom_button/custom_button_3.dart';
import '../../constants/app_colors/app_color.dart';
import '../../constants/app_styles/app_style.dart';
import '../../utilities/routes_name/routes_name.dart';

class PinCodeScreen extends StatelessWidget {
  PinCodeScreen({super.key});

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  login() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('email', emailController.text.toString());
    sp.setBool('isLogin', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    Navigator.popAndPushNamed(
                        context, RoutesName.forgotPassword);
                  },
                  icon: Icon(
                    CupertinoIcons.back,
                    color: black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    'Please type the verification code sent to\nyour given E-mail',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SofiaRegular',
                        color: Color(0xff9796A1)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PinCodeTextField(
                    appContext: context,
                    cursorColor: splashColor,
                    enablePinAutofill: true,
                    textStyle: TextStyle(
                      fontFamily: 'SofiaSemiBold',
                      color: splashColor,
                    ),
                    onChanged: (value){

                    },
                    length: 4,
                    keyboardType: TextInputType.number,
                    enabled: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      inactiveColor: Color(0xffEEEEEE),
                      activeColor: Color(0xffEEEEEE),
                      selectedColor: splashColor
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "I don't receive a code!",
                        style: TextStyle(
                          fontFamily: 'SofiaRegular',
                          fontSize: 16,
                          color: black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, RoutesName.pinCodeScreen, (route) => false);
                        },
                        child: Text(
                          'Please resend',
                          style: TextStyle(
                            fontFamily: 'SofiaMedium',
                            fontSize: 17,
                            color: splashColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomButton3(
                width: 248,
                height: 60,
                color: splashColor,
                text: 'PROCEED',
                style: TextStyle(
                  fontFamily: 'SofiaMedium',
                  color: white,
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, RoutesName.resetPassword, (route) => false);
                },
                borderRadius: BorderRadius.circular(28.41),
              ),
            ),
            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}
