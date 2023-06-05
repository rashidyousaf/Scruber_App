import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';
import '../../../common/widgets/custom_button2.dart';
import 'custom_checkout_textfield.dart';

class CheckoutScreen2 extends StatelessWidget {
  const CheckoutScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: blackColor,
          size: 30.sp,
        ),
        backgroundColor: wColor,
        centerTitle: true,
        title: Text(checkOut,
            style: myTS14(
                size: 18.sp, color: blackColor, weight: FontWeight.w500)),
      ),
      body: Column(children: [
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: Image.asset(
            icCheckout2,
            width: 233.w,
            height: 33.h,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Image.asset(
          icAtmCard,
          width: 487.w,
          height: 150.h,
        ),
        SizedBox(
          height: 92.h,
        ),
        SizedBox(
          width: 341.w,
          child: const CustomCheckoutTextfield(
            hint: 'An S. Lopes',
            title: cardHolderName,
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        SizedBox(
          width: 341.w,
          child: const CustomCheckoutTextfield(
            hint: '00XX 23XXX 0000 XX',
            title: cardNumber,
          ),
        ),
        SizedBox(
          height: 35.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 163.w,
              child: const CustomCheckoutTextfield(
                hint: 'MM/YY',
                title: expiry,
              ),
            ),
            SizedBox(
              width: 13.w,
            ),
            SizedBox(
              width: 163.w,
              child: const CustomCheckoutTextfield(
                hint: '380',
                title: cvvcvc,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 81.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cancel',
              style: myTS14(
                  size: 18.sp, color: blackColor, weight: FontWeight.w500),
            ),
            SizedBox(
              width: 73.w,
            ),
            SizedBox(
                width: 166.w,
                height: 47.h,
                child: CustomButton2(
                  onTap: () => Navigator.pushNamed(context, '/checkoutScreen3'),
                  title: 'Pay',
                  size: 14.sp,
                )),
          ],
        ),
      ]),
    );
  }
}
