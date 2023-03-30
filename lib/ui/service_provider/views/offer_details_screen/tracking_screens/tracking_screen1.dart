import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_appbar_widget.dart';

import '../../../../customer/widgets/custom_button.dart';

class TrackingScreen1 extends StatelessWidget {
  const TrackingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: serviceTracking,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 49.h,
            ),
            Image.asset(
              progress1,
              width: 327.w,
              height: 33.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            // this section for price
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Text(
                  total,
                  style: myTS14(
                    color: wColor,
                    size: 18.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  "\$32.65",
                  style: myTS14(
                    color: wColor,
                    size: 18.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
            // this section profile
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Image.asset(
                  icDprofile,
                  width: 50.w,
                  height: 50.w,
                ),
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jesicaSmith,
                      style: myTS14(
                        color: wColor,
                        size: 18.sp,
                        weight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          icLocation1,
                          width: 17.w,
                          height: 17.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "4 min(1.6 mi) away",
                          style: myTS14(
                            color: wColor,
                            size: 12.sp,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),

            // divider
            SizedBox(
              height: 12.h,
            ),
            Divider(
              color: grey2Color,
              thickness: 1.h,
              endIndent: 40.w,
              indent: 40.w,
            ),
            SizedBox(
              height: 23.h,
            ),
            // first row
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  serviceType,
                  style: myTS14(
                    color: wColor,
                    size: 16.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Text(
                  bodytiresMirrors,
                  style: myTS14(
                    color: grey2Color,
                    size: 16.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            // two row
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  carType,
                  style: myTS14(
                    color: wColor,
                    size: 16.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Text(
                  "$suv  $carModel",
                  style: myTS14(
                    color: grey2Color,
                    size: 16.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            // first three
            Row(
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  dateTime,
                  style: myTS14(
                    color: wColor,
                    size: 16.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Text(
                  'Tue 22, 8:30 am -10:30 am',
                  style: myTS14(
                    color: grey2Color,
                    size: 14.sp,
                    weight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 25.w,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Text(
                  "On My Way",
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
                  onTap: () => Navigator.pushNamed(context, '/trackingScreen2'),
                ),
                SizedBox(
                  width: 24.w,
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
