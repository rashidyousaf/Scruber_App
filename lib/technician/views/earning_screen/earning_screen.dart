import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_appbar_widget.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 23.h,
            ),
            Text(
              myBooings,
              style:
                  myTS14(size: 24.sp, weight: FontWeight.w700, color: wColor),
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              totalEarning,
              style:
                  myTS14(size: 18.sp, weight: FontWeight.w600, color: wColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$',
                  style: myTS14(
                      size: 16.sp, weight: FontWeight.w400, color: wColor),
                ),
                Text(
                  '400',
                  style: myTS14(
                      size: 40.sp, weight: FontWeight.w600, color: wColor),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              latestEarning,
              style:
                  myTS14(size: 18.sp, weight: FontWeight.w600, color: wColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 16.w, right: 14.w, top: 17.h),
                width: 332.w,
                height: 125.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r), color: wColor),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          icDprofile,
                          width: 70.w,
                          height: 70.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customer Name",
                                style: myTS14(
                                    size: 18.sp,
                                    weight: FontWeight.w600,
                                    color: blackColor),
                              ),
                              Text(
                                bodytiresMirrors,
                                style: myTS14(
                                    size: 16.sp,
                                    weight: FontWeight.w500,
                                    color: grey2Color),
                              ),
                              Text(
                                '7, jan, 20222',
                                style: myTS14(
                                    size: 14.sp,
                                    weight: FontWeight.w400,
                                    color: grey2Color),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                            ]),
                        const Spacer(),
                        Text(
                          'Paid',
                          style: myTS14(
                              color: blackColor,
                              size: 18.sp,
                              weight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '\$ 9.00',
                        style: myTS14(
                            color: bColor,
                            size: 18.sp,
                            weight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
