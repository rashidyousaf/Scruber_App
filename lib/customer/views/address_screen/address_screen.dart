import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_appbar_widget.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: myBooings,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 46.h,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 16.w),
              width: 341.w,
              height: 81.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 19.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        icLocation,
                        width: 50.w,
                        height: 50.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              house,
                              style: myTS14(
                                  size: 18.sp,
                                  weight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            Text(
                              'Etiam eu turpis molestie, dict  Etiam',
                              style: myTS14(
                                  size: 14.sp,
                                  weight: FontWeight.w400,
                                  color: grey2Color),
                            ),
                          ]),
                      SizedBox(
                        width: 21.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ),
          ),
          // this section for second

          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 16.w),
              width: 341.w,
              height: 81.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 19.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        icLocation,
                        width: 50.w,
                        height: 50.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              office,
                              style: myTS14(
                                  size: 18.sp,
                                  weight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            Text(
                              'Etiam eu turpis molestie, dict  Etiam',
                              style: myTS14(
                                  size: 14.sp,
                                  weight: FontWeight.w400,
                                  color: grey2Color),
                            ),
                          ]),
                      SizedBox(
                        width: 21.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ),
          ),

// this section for add button
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Container(
                padding: EdgeInsets.only(left: 16.w),
                width: 341.w,
                height: 81.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r), color: wColor),
                child: Image.asset(
                  icAddNewCar,
                  width: 57.w,
                  height: 57.h,
                )),
          ),
        ],
      ),
    );
  }
}
