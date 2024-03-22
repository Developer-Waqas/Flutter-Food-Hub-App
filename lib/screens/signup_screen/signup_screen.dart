import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_hub_app/components/custom_button/custom_button_3.dart';
import 'package:food_hub_app/components/custom_text_feild/custom_text_feild.dart';
import 'package:food_hub_app/components/toast_messege/toast_messege.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:food_hub_app/constants/app_styles/app_style.dart';
import 'package:food_hub_app/utilities/routes_name/routes_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  signUpUser() async {
    setState(() {
      loading = true;
    });

    final _auth = FirebaseAuth.instance;
    _auth
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesName.mainScreen, (route) => false);
    }).onError((error, stackTrace) {
     ToastMessages().toastMessages(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

  bool loading = false;
  ///hide password
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
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
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/img.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 22,
                      top: 60
                  ),
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
              ],
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
                    keyboardType: TextInputType.name,
                    hintText: 'Type Full Name',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Name';
                      } else if (value.length < 3) {
                        return 'Name should greater than 3 characters';
                      }else if (value.length > 20) {
                        return 'Name should Less than 20 characters';
                      } else {
                        return null;
                      }
                    },
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
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: 'Type E-mail',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter E-mail';
                      } else {
                        return null;
                      }
                    },
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
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    hintText: 'Type Password',
                    obscureText: _isHidden,
                    suffixIcon: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        _isHidden
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      } else if (value.length < 6) {
                        return 'Password should greater than 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                loading: loading,
                onTap: signUpUser,
                borderRadius: BorderRadius.circular(28.41),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
                    Navigator.pushNamedAndRemoveUntil(
                        context, RoutesName.loginScreen, (route) => false);
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
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                height: 45,
                width: 268,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: splashColor),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RoutesName.phoneNoScreen, (route) => false);
                  },
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      fontFamily: 'SofiaMedium',
                      fontSize: 17,
                      color: splashColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
                          color: black.withOpacity(0.4),
                          blurRadius: 6,
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
                          color: black.withOpacity(0.4),
                          blurRadius: 6,
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
                          color: black.withOpacity(0.4),
                          blurRadius: 6,
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
                          color: black.withOpacity(0.4),
                          blurRadius: 6,
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
