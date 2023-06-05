import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_appbar_widget.dart';
import '../../widgets/custom_button2.dart';
import '../../widgets/custom_textfield.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(),
      body: Padding(
        padding: EdgeInsets.only(top: 16.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              createNewPass,
              style:
                  myTS14(size: 25.sp, weight: FontWeight.w700, color: wColor),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              pleaseenternewPass,
              style:
                  myTS14(size: 14.sp, weight: FontWeight.w300, color: wColor),
            ),
            SizedBox(
              height: 17.h,
            ),
            CustomTextfield(
              hint: password,
              preIcon: Icon(
                Icons.lock,
                color: grey2Color,
                size: 30.sp,
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            SizedBox(
              height: 47.h,
              width: 341.w,
              child: CustomButton2(
                title: submit,
                size: 14.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
