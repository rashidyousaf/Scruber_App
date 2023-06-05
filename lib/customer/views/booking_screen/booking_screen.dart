import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_appbar_widget.dart';
import '../../../common/widgets/custom_button2.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

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
              height: 36.h,
            ),
            Center(
                child: Container(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
            )),
            SizedBox(
              height: 10.h,
            ),

            /// this portion add car container
          ],
        ));
  }
}
