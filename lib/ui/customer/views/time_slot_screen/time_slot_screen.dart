import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_appbar_widget.dart';
import '../../widgets/custom_button2.dart';

class TimeSlotScreen extends StatelessWidget {
  const TimeSlotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: chooseSlot,
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            padding: EdgeInsets.only(left: 24.w),
            height: 740.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: wColor,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 44.h,
                ),
                // this is schedule Now
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    scheduleNow,
                    style: myTS14(
                        size: 16.sp,
                        color: blackColor,
                        weight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                // this section for as soon as possible
                Container(
                  width: 224.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: blackColor, width: 1.w),
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          asSoon,
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: blackColor.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Image.asset(
                          icClock,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    asSoon,
                    style: myTS14(
                      size: 16.sp,
                      weight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 34.h,
                ),

                // this section for date test and calender
                Row(
                  children: [
                    Image.asset(
                      icCalender,
                      width: 24.w,
                      height: 24.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "$date :",
                      style: myTS14(
                        size: 16.sp,
                        weight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                    const Spacer(),
                    // this section 2023,
                    Text(
                      "2023",
                      style: myTS14(
                        size: 14.sp,
                        weight: FontWeight.w500,
                        color: blackColor,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 26.sp,
                      color: blackColor,
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                // this section days list in row
                Row(
                  children: [
                    Container(
                      width: 43.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: bColor),
                      child: Center(
                        child: Text(
                          '29',
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: wColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Container(
                      width: 43.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: blackColor),
                          borderRadius: BorderRadius.circular(25.r),
                          color: wColor),
                      child: Center(
                        child: Text(
                          '30',
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Container(
                      width: 43.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: blackColor),
                          borderRadius: BorderRadius.circular(25.r),
                          color: wColor),
                      child: Center(
                        child: Text(
                          '31',
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Container(
                      width: 43.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: blackColor),
                          borderRadius: BorderRadius.circular(25.r),
                          color: wColor),
                      child: Center(
                        child: Text(
                          '01',
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Container(
                      width: 43.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: blackColor),
                          borderRadius: BorderRadius.circular(25.r),
                          color: wColor),
                      child: Center(
                        child: Text(
                          '02',
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    Container(
                      width: 43.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.w, color: blackColor),
                          borderRadius: BorderRadius.circular(25.r),
                          color: wColor),
                      child: Center(
                        child: Text(
                          '03',
                          style: myTS14(
                            size: 16.sp,
                            weight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 54.h,
                ),
                Row(children: [
                  Image.asset(
                    icClock,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "$time :",
                    style: myTS14(
                      size: 16.sp,
                      weight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 19.h,
                ),
                // this section selection of time
                Row(
                  children: [
                    Container(
                      width: 300.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5.w,
                              color: blackColor.withOpacity(0.40)),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.h,
                            ),
                            Text(
                              "06:00 PM",
                              style: myTS14(
                                  size: 14.sp,
                                  weight: FontWeight.w500,
                                  color: blackColor.withOpacity(0.80)),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 30.sp,
                              color: blac2kColor,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "PM",
                          style: myTS14(
                              size: 14.sp,
                              weight: FontWeight.w500,
                              color: blackColor.withOpacity(0.80)),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 28.sp,
                          color: blac2kColor,
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                SizedBox(
                  width: 343.w,
                  height: 47.h,
                  child: CustomButton2(
                    title: bookNow,
                    size: 14.sp,
                    onTap: () =>
                        Navigator.pushNamed(context, '/checkoutScreen'),
                  ),
                ),
                SizedBox(
                  height: 53.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
