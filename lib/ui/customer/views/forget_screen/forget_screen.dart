import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_appbar_widget.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_textfield.dart';

import '../../widgets/custom_button.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: nBColor,
        appBar: const CustomAppbar(),
        body: Column(
          children: [
            SizedBox(
              height: 47.h,
            ),
            Center(
              child: SizedBox(
                  width: 170.w,
                  height: 137.h,
                  child: Image.asset(
                    icForgotLock,
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 48.h,
            ),
            Text(
              forgetPass,
              style:
                  myTS14(size: 24.sp, weight: FontWeight.w500, color: bColor),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: 347.w,
              child: Text(
                enteryouremailaddress,
                textAlign: TextAlign.center,
                style: myTS14(size: 15.sp, color: wColor),
              ),
            ),
            SizedBox(
              height: 62.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      email,
                      style: myTS14(size: 16.sp, color: wColor),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextfield(
                    preIcon: Icon(
                      Icons.mail,
                      color: grey2Color,
                      size: 28.sp,
                    ),
                    hint: enteremail,
                  ),
                  SizedBox(
                    height: 43.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        send,
                        textAlign: TextAlign.end,
                        style: myTS14(
                            size: 18.sp,
                            color: wColor,
                            weight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CustmButton(
                        onTap: () {
                          Navigator.pushNamed(context, '/signupScreen');
                        },
                      ),
                      SizedBox(
                        width: 19.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
