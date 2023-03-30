import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';

class CustomCheckoutTextfield extends StatelessWidget {
  const CustomCheckoutTextfield(
      {super.key, required this.title, required this.hint, this.controller});

  final String title;
  final String hint;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: myTS14(size: 11.sp, color: blackColor),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(width: 1.w, color: grey2Color)),
          child: TextField(
            cursorHeight: 20.h,
            cursorColor: nBColor,
            controller: controller,
            decoration: InputDecoration(

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
                hintStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: grey2Color)),
          ),
        )
      ],
    );
  }
}
