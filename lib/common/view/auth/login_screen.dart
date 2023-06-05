import 'dart:developer';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../core/controller/signup_controller.dart';
import '../../core/services/auth_service.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final AuthService aS = AuthService();
    final signupController = Provider.of<SignupController>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Image.asset(icUperDesign),
          SizedBox(
            height: 67.h,
          ),
          SizedBox(
            width: 200.w,
            height: 80.h,
            child: Image.asset(
              icLogo2,
              fit: BoxFit.fill,
            ),
          ),

          SizedBox(
            height: 100.h,
          ),
          // this section for app name
          // Text(
          //   appName,
          //   style:
          //       myTS14(color: blackColor, size: 25.sp, weight: FontWeight.w600),
          // ),

          CustomTextfield(
            controller: emailController,
            preIcon: Icon(
              Icons.mail,
              color: grey2Color,
              size: 28.sp,
            ),
            hint: enteremail,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextfield(
            controller: passController,
            hint: password,
            preIcon: Icon(
              Icons.lock,
              color: grey2Color,
              size: 30.sp,
            ),
            obs: true,
            sufIcon: Icon(
              Icons.visibility_off,
              color: grey2Color,
              size: 30.sp,
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/forgetScreen");
              },
              child: SizedBox(
                width: 170.w,
                child: Text(
                  forgetPass,
                  textAlign: TextAlign.center,
                  style: myTS14(color: grey2Color, weight: FontWeight.w300),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 44.h,
          ),
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          signIn,
                          textAlign: TextAlign.end,
                          style: myTS14(
                              size: 20.sp,
                              color: blackColor,
                              weight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        CustmButton(
                          loading: signupController.isLoading,
                          onTap: () async {
                            signupController.setIsLoading(true);
                            if (emailController.text.isNotEmpty ==
                                passController.text.isNotEmpty) {
                              signupController.setIsLoading(false);
                              await aS.signInWithEmailAndPassword(
                                  emailController.text,
                                  passController.text,
                                  context);
                            } else {
                              log("all field requared");
                              signupController.setIsLoading(false);
                            }
                          },
                        ),
                        SizedBox(
                          width: 19.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    // this section for signup wih social links
                    Text(
                      sighupwith,
                      style: myTS14(
                        color: blackColor,
                        size: 14.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // this section for facebook and google icons
                    SizedBox(
                      width: 100.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => aS.logout(context),
                            child: Image.asset(
                              icFacebook,
                              width: 40.w,
                              height: 40.h,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            onTap: () => signupController.handleGoogleLogin(),
                            child: Image.asset(
                              icGoogle,
                              width: 40.w,
                              height: 40.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),

                    /// this section for don't have account text
                    SizedBox(
                      width: 260.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            donthaveAccount,
                            style: myTS14(
                              color: blackColor,
                              size: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, '/signupScreen'),
                            child: Text(
                              createAccount,
                              style: myTS14(
                                  color: bColor,
                                  size: 14.sp,
                                  weight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // this section for design

                Container(
                  alignment: Alignment.bottomLeft,
                  width: 135.w,
                  child: Image.asset(
                    icLowerDesign,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
