import 'dart:developer';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scrubr_client_app/common/widgets/custom_image_picker.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../core/controller/signup_controller.dart';
import '../../core/services/auth_service.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final TextEditingController passwordController = TextEditingController();
    final signupController = Provider.of<SignupController>(context);

    final AuthService aS = AuthService();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(icUperDesign),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Image.asset(icUperDesign),
          // SizedBox(
          //   height: 50.h,
          // ),
          if (!isKeyboard)
            CustomImagePicker(
                controller: signupController.profileImgController),
          SizedBox(
            height: 13.h,
          ),
          // this section for app name
          if (!isKeyboard)
            Text(
              addProfilePic,
              style: myTS14(
                  color: grey2Color, size: 14.sp, weight: FontWeight.w400),
            ),
          SizedBox(
            height: 50.h,
          ),
          Column(
            children: [
              CustomTextfield(
                preIcon: Icon(
                  Icons.person,
                  color: grey2Color,
                  size: 35.sp,
                ),
                hint: firstName,
                controller: signupController.firstNameController,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextfield(
                hint: lastName,
                preIcon: Icon(
                  Icons.person,
                  color: grey2Color,
                  size: 35.sp,
                ),
                controller: signupController.lastNameController,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextfield(
                hint: enteremail,
                preIcon: Icon(
                  Icons.mail,
                  color: grey2Color,
                  size: 28.sp,
                ),
                controller: signupController.emailController,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextfield(
                hint: password,
                preIcon: Icon(
                  Icons.lock,
                  color: grey2Color,
                  size: 30.sp,
                ),
                // sufIcon: Icon(
                //   Icons.visibility_off,
                //   color: grey2Color,
                //   size: 30.sp,
                // ),
                // obs: true,
                controller: signupController.passwordController,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextfield(
                hint: "Confirm $password",
                preIcon: Icon(
                  Icons.lock,
                  color: grey2Color,
                  size: 30.sp,
                ),
                controller: passwordController,
                // sufIcon: Icon(
                //   Icons.visibility_off,
                //   color: grey2Color,
                //   size: 30.sp,
                // ),
                // obs: true,
              ),
            ],
          ),

          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                create,
                textAlign: TextAlign.end,
                style: myTS14(
                    size: 20.sp, color: blackColor, weight: FontWeight.w600),
              ),
              SizedBox(
                width: 5.w,
              ),
              CustmButton(
                loading: signupController.isLoading,
                onTap: () async {
                  signupController.setIsLoading(true);
                  // Navigator.pushNamed(context, '/addCarsScreen');
                  if (signupController.passwordController.text ==
                      passwordController.text) {
                    await aS.creatUserWithEmailAndPassword(
                        signupController.emailController.text,
                        signupController.passwordController.text,
                        context);
                    signupController.saveUserData();
                    signupController.setIsLoading(false);
                  } else {
                    log("Password don't match");
                    signupController.setIsLoading(false);
                  }
                },
              ),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 135.w,
                  height: 220.h,
                  child: Image.asset(
                    icLowerDesign,
                    fit: BoxFit.contain,
                  ),
                ),

                /// this section for don't have account text

                Text(
                  'Have an account?',
                  style: myTS14(
                    color: blackColor,
                    size: 14.sp,
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/loginScreen'),
                  child: Text(
                    'Log In',
                    style: myTS14(
                        color: bColor, size: 14.sp, weight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          // this section for design
        ],
      ),
    );
  }
}
