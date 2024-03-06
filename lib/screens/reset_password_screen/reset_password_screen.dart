import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/custom_button/custom_button_3.dart';
import '../../components/custom_text_feild/custom_text_feild.dart';
import '../../constants/app_colors/app_color.dart';
import '../../constants/app_styles/app_style.dart';
import '../../utilities/routes_name/routes_name.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  login() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('password', passwordController.text.toString());
    sp.setString('confirmPassword', confirmPasswordController.text.toString());
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Reset Password',
                    style: headingStyle5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Please enter your new password\nand click on below button',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SofiaRegular',
                        color: Color(0xff9796A1)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    hintText: 'Type New Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: 'Type Confirm Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                text: 'RESET PASSWORD',
                style: TextStyle(
                  fontFamily: 'SofiaMedium',
                  color: white,
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutesName.loginScreen,
                    (route) => false,
                  );
                },
                borderRadius: BorderRadius.circular(28.41),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
