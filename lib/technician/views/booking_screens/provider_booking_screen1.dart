import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_appbar_widget.dart';
import '../../../common/widgets/custom_button2.dart';

class ProviderBookingScreen extends StatefulWidget {
  const ProviderBookingScreen({super.key});

  @override
  State<ProviderBookingScreen> createState() => _ProviderBookingScreenState();
}

class _ProviderBookingScreenState extends State<ProviderBookingScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              myBooings,
              style:
                  myTS14(size: 24.sp, weight: FontWeight.w700, color: wColor),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 72.h,
              decoration: BoxDecoration(
                color: bColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: TabBar(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                controller: tabController,
                // physics: const ClampingScrollPhysics(),
                indicatorPadding: EdgeInsets.zero,
                unselectedLabelColor: blackColor,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r), color: nBColor),
                tabs: [
                  Tab(
                    child: SizedBox(
                      height: 40.h,
                      width: 105.w,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          service,
                          style: myTS14(
                              color: wColor,
                              size: 15.sp,
                              weight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      height: 40.h,
                      width: 105.w,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          history,
                          style: myTS14(
                              color: wColor,
                              size: 15.sp,
                              weight: FontWeight.w600),
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
                  padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        width: 344.w,
                        height: 270.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: wColor),
                        child: Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    icDprofile,
                                    width: 50.w,
                                    height: 50.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          carWash,
                                          style: myTS14(
                                              size: 16.sp,
                                              weight: FontWeight.w700,
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
                                                  weight: FontWeight.w500,
                                                  color: blac2kColor),
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
                                  const Spacer(),
                                  // this section for left price
                                  Text(
                                    "\$32.0",
                                    style: myTS14(
                                      color: bColor,
                                      size: 20.sp,
                                      weight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 18.h,
                              ),
                              // this section for divider
                              Divider(
                                color: blackColor,
                                thickness: 1.h,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              // this secton for confirm

                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Confirm",
                                  style: myTS14(
                                    color: const Color(0xff7FC09C),
                                    size: 14.sp,
                                    weight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              // this section for times

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    icSchedule,
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "8:00-9:00 AM,  09 Dec",
                                          style: myTS14(
                                              size: 14.sp,
                                              weight: FontWeight.w600,
                                              color: blackColor),
                                        ),
                                        Text(
                                          schedule,
                                          style: myTS14(
                                              size: 12.sp,
                                              weight: FontWeight.w500,
                                              color: blac2kColor),
                                        ),
                                      ]),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    icCarWash,
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          bodyWash,
                                          style: myTS14(
                                              size: 14.sp,
                                              weight: FontWeight.w600,
                                              color: blackColor),
                                        ),
                                        Text(
                                          bodytiresMirrors,
                                          style: myTS14(
                                              size: 12.sp,
                                              weight: FontWeight.w500,
                                              color: blac2kColor),
                                        ),
                                      ]),
                                  const Spacer(),
                                  SizedBox(
                                    height: 40.h,
                                    width: 81.w,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.r),
                                            color: bColor),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                icCall,
                                                width: 20.w,
                                                height: 20.h,
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Text(
                                                call,
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
                ),

                // second portion for tab bar
                Padding(
                  padding: EdgeInsets.only(top: 39.h, left: 10.w, right: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 19.w, right: 15.w),
                        width: 342.w,
                        height: 320.h,
                        decoration: BoxDecoration(
                          color: wColor,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 17.h,
                            ),
                            SizedBox(
                              width: 200.w,
                              height: 112.h,
                              child: Image.asset(
                                icCar,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        serviceProvider,
                                        style: myTS14(
                                            color: blackColor,
                                            size: 18.sp,
                                            weight: FontWeight.w600),
                                      ),
                                      Text(
                                        address,
                                        style: myTS14(
                                            color: blackColor,
                                            size: 14.sp,
                                            weight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 9.h,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: "$car :  ",
                                          style: myTS14(
                                              color: blackColor,
                                              size: 16.sp,
                                              weight: FontWeight.w500),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: bmwMini,
                                                style: myTS14(
                                                    color: blackColor,
                                                    size: 16.sp,
                                                    weight: FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: "Date & Time :  ",
                                          style: myTS14(
                                              color: blackColor,
                                              size: 16.sp,
                                              weight: FontWeight.w500),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: bodytiresMirrors,
                                                style: myTS14(
                                                    color: blackColor,
                                                    size: 16.sp,
                                                    weight: FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: '$service : ',
                                          style: myTS14(
                                              color: blackColor,
                                              size: 16.sp,
                                              weight: FontWeight.w500),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: bodyCleaning,
                                                style: myTS14(
                                                    color: blackColor,
                                                    size: 16.sp,
                                                    weight: FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width: 114.w,
                                height: 37.h,
                                child: CustomButton2(
                                  onTap: () => Navigator.pushNamed(
                                      context, '/bookingDetailsScreen'),
                                  title: viewDetails,
                                  size: 14.sp,
                                ),
                              ),
                            )
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
      ),
    );
  }
}
