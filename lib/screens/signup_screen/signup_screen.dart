import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_button/custom_button_3.dart';
import 'package:food_hub_app/components/custom_text_feild/custom_text_feild.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:food_hub_app/constants/app_styles/app_style.dart';
import 'package:food_hub_app/utilities/routes_name/routes_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  signUp() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('name', nameController.text.toString() );
    sp.setString('email', emailController.text.toString());
    sp.setBool('isSignUp', true);
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
                        context, RoutesName.welcomeScreen);
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
                    height: 20,
                  ),
                  Text(
                    'Sign Up',
                    style: headingStyle5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Full Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SofiaRegular',
                        color: Color(0xff9796A1)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    hintText: 'Type Full Name',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'E-mail',
                    style: TextStyle(
                        fontSize: 16,
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
                  const Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SofiaRegular',
                        color: Color(0xff9796A1)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(
                    hintText: 'Type Password',
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Icon(CupertinoIcons.eye_slash),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: CustomButton3(
                width: 248,
                height: 60,
                color: splashColor,
                text: 'SIGN UP',
                style: TextStyle(
                  fontFamily: 'SofiaMedium',
                  color: white,
                ),
                onTap: () {},
                borderRadius: BorderRadius.circular(28.41),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "Already have an Account?",
                  style: TextStyle(
                    fontFamily: 'SofiaRegular',
                    fontSize: 16,
                    color: black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route) => false);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'SofiaMedium',
                      fontSize: 17,
                      color: splashColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: grey,
                      thickness: 2,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Or Sign Up with",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SofiaMedium',
                      color: black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          offset: Offset(0, 4),
                        )
                      ],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          scale: 3,
                          image: AssetImage('assets/images/img_fb_logo.png')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: const DecorationImage(
                          scale: 3,
                          image:
                          AssetImage('assets/images/img_google_logo.png')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: const DecorationImage(
                          scale: 15,
                          image:
                          AssetImage('assets/images/img_apple_logo.png')),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          offset: Offset(0, 4),
                        )
                      ],
                      image: const DecorationImage(
                          scale: 13,
                          image: AssetImage('assets/images/img_x_logo.png')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
