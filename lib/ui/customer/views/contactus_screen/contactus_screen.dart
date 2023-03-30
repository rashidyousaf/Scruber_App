import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/views/contactus_screen/custom_contactus_textfield.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_button2.dart';

import '../../widgets/custom_appbar_widget.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: contactUs,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              feelFree,
              style:
                  myTS14(size: 30.sp, weight: FontWeight.w600, color: wColor),
            ),
            Text(
              toContact,
              style:
                  myTS14(size: 30.sp, weight: FontWeight.w600, color: wColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            // this section for button
            SizedBox(
              height: 41.h,
              width: 104.w,
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r), color: bColor),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          icCall,
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          callUs,
                          style: myTS14(
                              size: 14.sp,
                              weight: FontWeight.w600,
                              color: wColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // this section for textfields

            SizedBox(
              height: 31.h,
            ),
            const CustomContactusTextfield(hint: name),
            SizedBox(
              height: 10.h,
            ),
            const CustomContactusTextfield(hint: email),
            SizedBox(
              height: 10.h,
            ),
            // this secton for message
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(width: 1.w, color: grey2Color)),
              child: TextField(
                style: const TextStyle(color: wColor),
                maxLines: 10,
                cursorHeight: 20.h,
                cursorColor: wColor,
                decoration: InputDecoration(

                    // section for removing border
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      left: 15.w,
                      right: 15.w,
                      bottom: 5.h,
                      top: 10.h,
                    ),
                    hintText: message,
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: grey2Color)),
              ),
            ),
            const Spacer(),
            // this section for button
            SizedBox(
              height: 47.h,
              width: 341.w,
              child: CustomButton2(
                title: submit,
                size: 14.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
