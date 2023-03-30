import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';
import '../../widgets/custom_appbar_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: 'Payment Settings',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 43.h,
            ),
            Row(
              children: [
                Image.asset(
                  icAddPayment,
                  width: 24.w,
                  height: 24.h,
                ),
                SizedBox(
                  width: 11.w,
                ),
                Text(
                  paymentCards,
                  style: myTS14(
                      size: 15.sp, weight: FontWeight.w600, color: wColor),
                )
              ],
            ),
            SizedBox(
              height: 49.h,
            ),
            SizedBox(
              height: 150.h,
              width: 250.w,
              child: Image.asset(
                icAtmCard,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 51.h,
            ),
            Row(
              children: [
                Image.asset(
                  icAddPayment,
                  width: 24.w,
                  height: 24.h,
                ),
                SizedBox(
                  width: 11.w,
                ),
                Text(
                  addnewCar,
                  style: myTS14(
                      size: 15.sp, weight: FontWeight.w600, color: wColor),
                )
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              width: 341.w,
              height: 170.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: wColor,
              ),
              child: Center(
                child: Container(
                  width: 87.w,
                  height: 87.h,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Image.asset(
                    icAddCard,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
