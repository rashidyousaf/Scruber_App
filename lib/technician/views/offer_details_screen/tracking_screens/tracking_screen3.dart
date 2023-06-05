import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../../common/widgets/custom_appbar_widget.dart';
import '../../../../common/widgets/custom_button.dart';

class TrackingScreen3 extends StatelessWidget {
  const TrackingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: serviceTracking,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 49.h,
            ),
            Image.asset(
              progress3,
              width: 327.w,
              height: 33.h,
            ),
            SizedBox(
              height: 63.h,
            ),
            // this section map
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                picturesOfInterior,
                style: myTS14(
                  color: wColor,
                  size: 18.sp,
                  weight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            // this section of picture selector
            Row(
              children: [
                Container(
                  width: 164.w,
                  height: 123.h,
                  decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            icaddCarPicture,
                            width: 45.w,
                            height: 45.h,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(
                            before,
                            style: myTS14(
                              color: grey2Color,
                              size: 10.sp,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ]),
                  ),
                ),
                // second container

                SizedBox(
                  width: 14.w,
                ),
                Container(
                  width: 164.w,
                  height: 123.h,
                  decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            icaddCarPicture,
                            width: 45.w,
                            height: 45.h,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(
                            after,
                            style: myTS14(
                              color: grey2Color,
                              size: 10.sp,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 46.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                picturesOfInterior,
                style: myTS14(
                  color: wColor,
                  size: 18.sp,
                  weight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            // this section of picture selector
            Row(
              children: [
                Container(
                  width: 164.w,
                  height: 123.h,
                  decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            icaddCarPicture,
                            width: 45.w,
                            height: 45.h,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(
                            before,
                            style: myTS14(
                              color: grey2Color,
                              size: 10.sp,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ]),
                  ),
                ),
                // second Row
                SizedBox(
                  height: 46.h,
                ),
                SizedBox(
                  width: 14.w,
                ),
                Container(
                  width: 164.w,
                  height: 123.h,
                  decoration: BoxDecoration(
                    color: wColor,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            icaddCarPicture,
                            width: 45.w,
                            height: 45.h,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(
                            after,
                            style: myTS14(
                              color: grey2Color,
                              size: 10.sp,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),

            // this section for button
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Text(
                  complete,
                  style: myTS14(
                    color: greyColor,
                    size: 16.sp,
                    weight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustmButton(
                  onTap: () => Navigator.pushNamed(context, '/trackingScreen4'),
                ),
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
          ],
        ),
      ),
    );
  }
}
