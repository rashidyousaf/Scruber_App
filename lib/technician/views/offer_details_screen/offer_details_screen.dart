import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_button2.dart';

class OfferDetailsScreen extends StatelessWidget {
  const OfferDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 16.w, top: 15.w),
              width: 342.w,
              height: 290.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        icCarWash,
                        width: 78.w,
                        height: 78.h,
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              carWash,
                              style: myTS14(
                                  size: 18.sp,
                                  weight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            Row(
                              children: [
                                Text(
                                  bodytiresMirrors,
                                  style: myTS14(
                                      size: 16.sp,
                                      weight: FontWeight.w500,
                                      color: grey2Color),
                                ),
                              ],
                            ),
                            Text(
                              '1 hour',
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
                      Checkbox(value: true, onChanged: (value) {}),
                      SizedBox(
                        width: 21.w,
                      ),
                    ],
                  ),
                  // this section for price
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 70.w,
                      child: Text(
                        "\$9.00",
                        style: myTS14(
                            color: blackColor,
                            size: 18.sp,
                            weight: FontWeight.w600),
                      ),
                    ),
                  ),
// this section for checkboxs1

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18.h,
                          width: 400,
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(
                                fullInteriorWash,
                                style: myTS14(
                                    size: 12.sp,
                                    color: grey2Color,
                                    weight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                        // this section for checkboxs2
                        SizedBox(
                          height: 18.h,
                          width: 400,
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(
                                exteriorWash,
                                style: myTS14(
                                    size: 12.sp,
                                    color: grey2Color,
                                    weight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // this section for checkboxs3
                        SizedBox(
                          height: 18.h,
                          width: 400,
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(
                                dashboardWipeDown,
                                style: myTS14(
                                    size: 12.sp,
                                    color: grey2Color,
                                    weight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // this section for checkboxs4
                        SizedBox(
                          height: 18.h,
                          width: 400,
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(
                                tireRimeCleaning,
                                style: myTS14(
                                    size: 12.sp,
                                    color: grey2Color,
                                    weight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // this section for checkboxs5
                        SizedBox(
                          height: 18.h,
                          width: 400,
                          child: Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              Text(
                                footMatClean,
                                style: myTS14(
                                    size: 12.sp,
                                    color: grey2Color,
                                    weight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // this section for checkboxs6
                        SizedBox(
                          height: 18.h,
                          width: 400,
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(
                                glassCleaning,
                                style: myTS14(
                                    size: 12.sp,
                                    color: grey2Color,
                                    weight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // this setion for secon container
          SizedBox(
            height: 15.h,
          ),

          Center(
            child: Container(
              padding: EdgeInsets.only(left: 16.w, top: 15.w),
              width: 342.w,
              height: 130.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        icCarWash,
                        width: 78.w,
                        height: 78.h,
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fullService,
                              style: myTS14(
                                  size: 18.sp,
                                  weight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            Row(
                              children: [
                                Text(
                                  bodytiresMirrors,
                                  style: myTS14(
                                      size: 16.sp,
                                      weight: FontWeight.w500,
                                      color: grey2Color),
                                ),
                              ],
                            ),
                            Text(
                              '1 hour',
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
                      Checkbox(value: true, onChanged: (value) {}),
                      SizedBox(
                        width: 21.w,
                      ),
                    ],
                  ),
                  // this section for price
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 70.w,
                      child: Text(
                        "\$23.00",
                        style: myTS14(
                            color: blackColor,
                            size: 18.sp,
                            weight: FontWeight.w600),
                      ),
                    ),
                  ),
// this section for checkboxs1
                ],
              ),
            ),
          ),
          SizedBox(
            height: 9.h,
          ),
          SizedBox(
            width: 342.w,
            height: 190.h,
            child: Image.asset(
              icMapOffer,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                "Payout",
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
          SizedBox(
            height: 34.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                "Cancel",
                style: myTS14(
                  color: wColor,
                  size: 20.sp,
                  weight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              SizedBox(
                  width: 160.w,
                  height: 47.h,
                  child: CustomButton2(
                    onTap: () =>
                        Navigator.pushNamed(context, '/trackingScreen1'),
                    title: "Accept",
                    size: 14.sp,
                  )),
              SizedBox(
                width: 25.w,
              ),
            ],
          )
        ],
      )),
    );
  }
}
