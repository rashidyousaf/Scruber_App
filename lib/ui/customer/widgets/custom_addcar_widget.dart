import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/conts.dart';

class CustomAddcarWidget extends StatelessWidget {
  const CustomAddcarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19.w, right: 15.w),
      width: 342.w,
      height: 220.h,
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
                      suv,
                      style: myTS14(
                          color: blackColor,
                          size: 16.sp,
                          weight: FontWeight.w500),
                    ),
                    Text(
                      "$carName/$nickName",
                      style: myTS14(
                          color: blackColor,
                          size: 16.sp,
                          weight: FontWeight.w500),
                    ),
                    Text(
                      "$carModel/year",
                      style: myTS14(
                          color: blackColor.withOpacity(0.7),
                          size: 14.sp,
                          weight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.more_vert,
                  color: blackColor,
                  size: 30.sp,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
