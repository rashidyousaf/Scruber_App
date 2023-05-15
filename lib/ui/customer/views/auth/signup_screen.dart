import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(icUperDesign),
          SizedBox(
            height: 67.h,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10.h),
                  clipBehavior: Clip.antiAlias,
                  width: 97.w,
                  height: 97.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: blackColor,
                  ),
                  child: Image.asset(
                    icPPerson,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 75.h,
                    left: 65.w,
                    child: Image.asset(
                      icPlus,
                      width: 21.76.w,
                      height: 21.76.w,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          // this section for app name
          Text(
            addProfilePic,
            style:
                myTS14(color: grey2Color, size: 14.sp, weight: FontWeight.w400),
          ),
          SizedBox(
            height: 44.h,
          ),
          CustomTextfield(
            preIcon: Icon(
              Icons.person,
              color: grey2Color,
              size: 35.sp,
            ),
            hint: firstName,
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
            sufIcon: Icon(
              Icons.visibility_off,
              color: grey2Color,
              size: 30.sp,
            ),
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
            sufIcon: Icon(
              Icons.visibility_off,
              color: grey2Color,
              size: 30.sp,
            ),
          ),

          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 75.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        create,
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
                        onTap: () {
                          Navigator.pushNamed(context, '/addCarsScreen');
                        },
                      ),
                      SizedBox(
                        width: 24.w,
                      ),
                    ],
                  ),

                  // this section for facebook and google icons
                ],
              ),
              // this section for design
              Container(
                alignment: Alignment.centerLeft,
                width: 135.w,
                height: 200.h,
                child: Image.asset(
                  icLowerDesign,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
