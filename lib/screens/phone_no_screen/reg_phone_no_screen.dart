import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/components/toast_messege/toast_messege.dart';
import 'package:food_hub_app/screens/phone_no_screen/verify_code_screen/verify_code_screen.dart';

import '../../components/custom_button/custom_button_3.dart';
import '../../components/custom_text_feild/custom_text_feild.dart';
import '../../constants/app_colors/app_color.dart';
import '../../constants/app_styles/app_style.dart';
import '../../utilities/routes_name/routes_name.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final _auth = FirebaseAuth.instance;

  final phoneController = TextEditingController();

  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  SignUpUser() {
    if (formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      _auth
          .verifyPhoneNumber(
        phoneNumber: phoneController.text,
        verificationCompleted: (PhoneAuthCredential credential) {
          setState(() {
            loading = true;
          });
        },
        verificationFailed: (FirebaseAuthException exception) {
         ToastMessages().toastMessages(exception.toString());
        },
        codeSent: (String verificationID, int? token) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => VerifyCodeScreen(
                  verificationID: verificationID,
                ),
              ),
              (route) => false);
          setState(() {
            loading = false;
          });
        },
        codeAutoRetrievalTimeout: (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                e.toString(),
              ),
            ),
          );
          setState(() {
            loading = false;
          });
        },
      );
    }
  }

  bool loading = false;

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
                    Navigator.popAndPushNamed(context, RoutesName.signupScreen);
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
                    height: 40,
                  ),
                  Text(
                    'Sign Up with Phone Number',
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
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          hintText: 'Type Full Name',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Name';
                            } else if (value.length < 3) {
                              return 'Name should greater than 3 characters';
                            } else if (value.length > 20) {
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
                          'Phone Number',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'SofiaRegular',
                              color: Color(0xff9796A1)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          hintText: '+921234567890',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Phone Number';
                            } else if (value.length > 13 || value.length < 13) {
                              return 'Invalid Phone Number';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CustomButton3(
                width: 248,
                height: 60,
                color: splashColor,
                text: 'SEND OTP',
                style: TextStyle(
                  fontFamily: 'SofiaMedium',
                  color: white,
                ),
                loading: loading,
                onTap: SignUpUser,
                borderRadius: BorderRadius.circular(28.41),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(
                    fontFamily: 'SofiaRegular',
                    fontSize: 16,
                    color: black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RoutesName.loginScreen,
                      (route) => false,
                    );
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
