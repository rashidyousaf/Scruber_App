import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';
import '../../widgets/custom_appbar_widget.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Policy",
              style:
                  myTS14(size: 25.sp, weight: FontWeight.w700, color: wColor),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              'Last updated on 1/12/2022',
              style:
                  myTS14(size: 14.sp, weight: FontWeight.w300, color: wColor),
            ),
            SizedBox(
              height: 36.h,
            ),
            Text(
              "1. Clause 1",
              style:
                  myTS14(size: 20.sp, weight: FontWeight.w700, color: wColor),
            ),
            SizedBox(
              height: 9.h,
            ),
            SizedBox(
              width: 312.w,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
                style:
                    myTS14(size: 16.sp, weight: FontWeight.w400, color: wColor),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Text(
              "1. Clause 2",
              style:
                  myTS14(size: 20.sp, weight: FontWeight.w700, color: wColor),
            ),
            SizedBox(
              height: 9.h,
            ),
            SizedBox(
              width: 312.w,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
                style:
                    myTS14(size: 16.sp, weight: FontWeight.w400, color: wColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
