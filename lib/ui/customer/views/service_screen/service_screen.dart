import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_appbar_widget.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_button2.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  bool rememberMe = false;
  bool rememberMe1 = false;
  bool rememberMe2 = false;
  bool rememberMe3 = false;
  bool rememberMe4 = false;
  bool rememberMe5 = false;
  bool rememberMe6 = false;
  bool rememberMe7 = false;
  bool rememberMe8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: services,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
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
                      Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          }),
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
                              Checkbox(
                                  value: rememberMe1,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe1 = value!;
                                    });
                                  }),
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
                              Checkbox(
                                  value: rememberMe2,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe2 = value!;
                                    });
                                  }),
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
                              Checkbox(
                                  value: rememberMe3,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe3 = value!;
                                    });
                                  }),
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
                              Checkbox(
                                  value: rememberMe4,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe4 = value!;
                                    });
                                  }),
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
                                  value: rememberMe5,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe5 = value!;
                                    });
                                  }),
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
                              Checkbox(
                                  value: rememberMe6,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe6 = value!;
                                    });
                                  }),
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
                      Checkbox(
                          value: rememberMe7,
                          onChanged: (value) {
                            setState(() {
                              rememberMe7 = value!;
                            });
                          }),
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
                              'Dry Clean Only',
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
                      Checkbox(
                          value: rememberMe8,
                          onChanged: (value) {
                            setState(() {
                              rememberMe8 = value!;
                            });
                          }),
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
                        "\$12.00",
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
          const Spacer(),
          SizedBox(
            width: 343.w,
            height: 47.h,
            child: CustomButton2(
              title: bookNow,
              size: 14.sp,
            ),
          ),
          SizedBox(
            height: 24.h,
          )
        ],
      ),
    );
  }
}
