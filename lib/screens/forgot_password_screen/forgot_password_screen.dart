import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/custom_button/custom_button_3.dart';
import '../../components/custom_text_feild/custom_text_feild.dart';
import '../../constants/app_colors/app_color.dart';
import '../../constants/app_styles/app_style.dart';
import '../../utilities/routes_name/routes_name.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

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
                        context, RoutesName.loginScreen);
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
                    'Forgot Password?',
                    style: headingStyle5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Please enter your email address to\nrequest a password reset',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SofiaRegular',
                        color: Color(0xff9796A1)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    hintText: 'Type E-mail',
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
                text: 'SEND REQUEST',
                style: TextStyle(
                  fontFamily: 'SofiaMedium',
                  color: white,
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, RoutesName.pinCodeScreen, (route) => false);
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
