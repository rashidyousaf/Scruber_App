import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scrubr_client_app/common/core/controller/signup_controller.dart';

import '../../../const/conts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      this.hint = '',
      this.preIcon,
      this.sufIcon,
      this.controller,
      this.obs = false});

  final String hint;
  final Widget? preIcon;
  final Widget? sufIcon;
  final bool obs;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final signupCotroller = Provider.of<SignupController>(context);
    return Container(
      padding: EdgeInsets.only(left: 10.w, top: 3.h),
      width: 342.w,
      height: 50.h,
      decoration: BoxDecoration(
          color: wColor,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
                color: greyColor.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 2,
                offset: const Offset(0, 3))
          ]),
      child: TextField(
        obscureText: obs ? signupCotroller.obscureText : false,
        controller: controller,
        cursorHeight: 20.h,
        cursorColor: nBColor,
        decoration: InputDecoration(
            prefixIcon: preIcon,
            suffixIcon: obs
                ? GestureDetector(
                    onTap: () {
                      signupCotroller.togglePasswordVisibility();
                    },
                    child: Icon(
                      signupCotroller.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: grey2Color,
                      size: 30.sp,
                    ),
                  )
                : sufIcon,
            // section for removing border
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(
              left: 15.w,
              bottom: 11.h,
              top: 10.h,
            ),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 18.sp, color: greyColor)),
      ),
    );
  }
}
