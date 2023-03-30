import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_appbar_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: notifications,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 26.h, left: 25.w, right: 25.w),
        child: Column(
          children: [
            Container(
              width: 341.w,
              height: 74.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 28.w,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 20.sp,
                      color: bColor,
                    ),
                    SizedBox(
                      width: 28.w,
                    ),
                    Text(
                      "Your Car is now being washed",
                      style: myTS14(
                          color: blackColor,
                          size: 14.sp,
                          weight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              width: 341.w,
              height: 74.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 28.w,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 20.sp,
                      color: bColor,
                    ),
                    SizedBox(
                      width: 28.w,
                    ),
                    Text(
                      "Your Car is now being washed",
                      style: myTS14(
                          color: blackColor,
                          size: 14.sp,
                          weight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              width: 341.w,
              height: 74.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), color: wColor),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 28.w,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 20.sp,
                      color: bColor,
                    ),
                    SizedBox(
                      width: 28.w,
                    ),
                    Text(
                      "Your Car is now being washed",
                      style: myTS14(
                          color: blackColor,
                          size: 14.sp,
                          weight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
          ],
        ),
      ),
    );
  }
}
