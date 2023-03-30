import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';
import '../../widgets/custom_appbar_widget.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: 'Booking Details',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceProvider,
                  style: myTS14(
                      color: wColor, size: 18.sp, weight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  name,
                  style: myTS14(
                      color: wColor, size: 16.sp, weight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  address,
                  style: myTS14(
                      color: grey2Color, size: 14.sp, weight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            thickness: 3.h,
            color: grey2Color,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Car Detail',
                  style: myTS14(
                      color: wColor, size: 18.sp, weight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    text: "$car :  ",
                    style: myTS14(
                        color: wColor, size: 16.sp, weight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                          text: bmwMini,
                          style: myTS14(
                              color: grey2Color,
                              size: 16.sp,
                              weight: FontWeight.w400)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                RichText(
                  text: TextSpan(
                    text: '$cardNumber : ',
                    style: myTS14(
                        color: wColor, size: 16.sp, weight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                          text: bmwMini,
                          style: myTS14(
                              color: grey2Color,
                              size: 16.sp,
                              weight: FontWeight.w400)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            thickness: 3.h,
            color: grey2Color,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceProvider,
                  style: myTS14(
                      color: wColor, size: 18.sp, weight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      'Engin Detaling',
                      style: myTS14(
                          color: grey2Color,
                          size: 14.sp,
                          weight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      '\$60',
                      style: myTS14(
                          color: wColor, size: 16.sp, weight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      bodyWash,
                      style: myTS14(
                          color: grey2Color,
                          size: 14.sp,
                          weight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      '\$60',
                      style: myTS14(
                          color: wColor, size: 16.sp, weight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            thickness: 3.h,
            color: grey2Color,
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 24.w),
            child: Row(
              children: [
                Text(
                  total,
                  style: myTS14(
                      color: wColor, size: 20.sp, weight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  '\$120',
                  style: myTS14(
                      color: wColor, size: 20.sp, weight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
