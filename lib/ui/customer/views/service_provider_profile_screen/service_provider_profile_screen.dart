import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_appbar_widget.dart';

class ServiceProviderProfileScreen extends StatefulWidget {
  const ServiceProviderProfileScreen({super.key});

  @override
  State<ServiceProviderProfileScreen> createState() =>
      _ServiceProviderProfileScreenState();
}

class _ServiceProviderProfileScreenState
    extends State<ServiceProviderProfileScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        backgroundColor: nBColor,
        appBar: const CustomAppbar(
          micon: Icons.menu,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  icDprofile,
                  width: 97.w,
                  height: 97.h,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                jesicaSmith,
                style: myTS14(size: 18.sp, color: wColor),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Image.asset(
                    icLocation1,
                    width: 18.w,
                    height: 18.h,
                  ),
                  Text(
                    jesicaSmith,
                    style: myTS14(
                        size: 12.sp, color: wColor, weight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Text(
                    '5.0',
                    style: myTS14(
                        size: 14.sp, color: wColor, weight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.pink,
                    size: 20.sp,
                  ),
                  Text(
                    '(129 $reviews) ',
                    style: myTS14(
                        size: 12.sp, color: greyColor, weight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 45.h,
              ),
              SizedBox(
                height: 36.35.h,
                child: TabBar(
                  controller: tabController,
                  // physics: const ClampingScrollPhysics(),
                  indicatorPadding: EdgeInsets.zero,
                  unselectedLabelColor: grey2Color,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r), color: bColor),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 36.35.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: bColor, width: 1.w)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            service,
                            style: myTS14(size: 14.sp, weight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 36.35.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: bColor, width: 1.w)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            about,
                            style: myTS14(size: 14.sp, weight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 36.35.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: bColor, width: 1.w)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            reviews,
                            style: myTS14(size: 14.sp, weight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // this portion for tabbarview
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  // first portion for tab bar
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16.w),
                          width: 341.w,
                          height: 110.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: wColor),
                          child: Row(
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    carWash,
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
                                    '1 hour',
                                    style: myTS14(
                                        size: 14.sp,
                                        weight: FontWeight.w400,
                                        color: grey2Color),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  // second portion for tab bar
                  Padding(
                    padding:
                        EdgeInsets.only(top: 39.h, left: 10.w, right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          about,
                          style: myTS14(
                              color: wColor,
                              size: 18.sp,
                              weight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 120.h,
                          child: Text(
                            'Corem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dict  Etiam eu turpis molestie, dict  Etiam eu turpis molestie, dict',
                            style: myTS14(
                                color: wColor,
                                size: 14.sp,
                                weight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Location',
                          style: myTS14(
                              color: wColor,
                              size: 18.sp,
                              weight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Image.asset(
                          imgMap,
                          height: 183.h,
                        )
                      ],
                    ),
                  ),
                  // third portion for tabbar
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 12.w, top: 12.h, right: 15.w),
                          width: 341.w,
                          height: 110.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: wColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    icCarWash,
                                    width: 48.w,
                                    height: 48.h,
                                  ),
                                  SizedBox(
                                    width: 22.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Yasmeen",
                                        style: myTS14(
                                            size: 18.sp,
                                            weight: FontWeight.w600,
                                            color: blackColor),
                                      ),
                                      Text(
                                        "22/Mar/2022",
                                        style: myTS14(
                                            size: 12.sp,
                                            weight: FontWeight.w400,
                                            color: grey2Color),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    icRatingStars,
                                    width: 74.w,
                                    height: 10.h,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              SizedBox(
                                width: 300.w,
                                child: Text(
                                  "Etiam eu turpis molestie, dict  Etiam",
                                  style: myTS14(
                                      size: 14.sp,
                                      weight: FontWeight.w300,
                                      color: blackColor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
