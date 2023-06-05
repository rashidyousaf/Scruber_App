import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';

class CustomCheckoutWidget extends StatelessWidget {
  const CustomCheckoutWidget(
      {super.key, required this.title, required this.price});

  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14.h, left: 13.w, right: 15.w),
      width: 342.w,
      height: 70.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: grey2Color)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: myTS14(
                    size: 16.sp, weight: FontWeight.w600, color: blackColor),
              ),
              Text(
                bodytiresMirrors,
                style: myTS14(
                    size: 12.sp, weight: FontWeight.w400, color: grey2Color),
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 40.h,
            child: Center(
              child: Text(
                price,
                style: myTS14(
                    size: 18.sp, weight: FontWeight.w300, color: blackColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
