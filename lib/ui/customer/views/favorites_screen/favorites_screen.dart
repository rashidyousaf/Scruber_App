import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_appbar_widget.dart';
import '../../widgets/custom_button2.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: 'Favorites',
      ),
      body: Column(
        children: [
          SizedBox(
            height: 46.h,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 16.w),
              width: 332.w,
              height: 125.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Image.asset(
                          icDprofile,
                          width: 50.w,
                          height: 50.h,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                carWash,
                                style: myTS14(
                                    size: 18.sp,
                                    weight: FontWeight.w400,
                                    color: blackColor),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    icLocation1,
                                    width: 12.w,
                                    height: 15.h,
                                  ),
                                  Text(
                                    'Located in North of RWP',
                                    style: myTS14(
                                        size: 12.sp,
                                        weight: FontWeight.w300,
                                        color: grey2Color),
                                  ),
                                ],
                              ),
                              Text(
                                '04 Km away',
                                style: myTS14(
                                    size: 12.sp,
                                    weight: FontWeight.w500,
                                    color: grey2Color),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                            ]),
                      ),
                      const Spacer(),
                      Container(
                        width: 39.w,
                        height: 22.24.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: grey2Color),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(5.r)),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                "5.0",
                                style: myTS14(
                                  color: blackColor,
                                  size: 14.sp,
                                ),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Icon(
                                Icons.star,
                                size: 15.sp,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 21.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 27.h,
                        width: 49.w,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1.w, color: bColor),
                                borderRadius: BorderRadius.circular(30.r),
                                color: wColor),
                            child: Center(
                              child: Text(
                                details,
                                style: myTS14(
                                    size: 10.sp,
                                    weight: FontWeight.w400,
                                    color: blackColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      SizedBox(
                        height: 27.h,
                        width: 69.w,
                        child: CustomButton2(
                          title: bookNow,
                          size: 10.sp,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
