import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_button2.dart';
import 'custom_checkout_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Image.asset(
              icCheckout1,
              width: 233.w,
              height: 33.h,
            ),
          ),
          SizedBox(
            height: 53.h,
          ),

          // this section for add payment

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icPlus,
                width: 18.63.w,
                height: 18.63.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                addpaymentmethod,
                style: myTS14(size: 14.sp, color: blac2kColor),
              )
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                googlepay,
                style: myTS14(size: 15.sp, color: blackColor),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                comingSoon,
                style: myTS14(size: 15.sp, color: blac2kColor),
              )
            ],
          ),
          SizedBox(
            height: 28.h,
          ),
          const CustomCheckoutWidget(
            title: bodyWash,
            price: '\$ 9.00',
          ),
          SizedBox(
            height: 15.h,
          ),
          const CustomCheckoutWidget(
            title: fullService,
            price: '\$ 23.00',
          ),
          SizedBox(
            height: 15.h,
          ),
          const CustomCheckoutWidget(
            title: addTip,
            price: '\$ 00.00',
          ),
          SizedBox(
            height: 46.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                subtotal,
                style: myTS14(
                    size: 15.sp, weight: FontWeight.w500, color: blackColor),
              ),
              const Spacer(),
              Text(
                '\$ 32.00',
                style: myTS14(
                    size: 15.sp, weight: FontWeight.w500, color: blackColor),
              ),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                tip,
                style: myTS14(
                    size: 15.sp, weight: FontWeight.w500, color: blackColor),
              ),
              const Spacer(),
              Text(
                '\$ 0.00',
                style: myTS14(
                    size: 15.sp, weight: FontWeight.w500, color: blackColor),
              ),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Divider(
            thickness: 1.h,
            endIndent: 35.w,
            indent: 35.w,
            color: blac2kColor,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text(
                payyouAmount,
                style: myTS14(
                    size: 16.sp, weight: FontWeight.w600, color: blackColor),
              ),
              const Spacer(),
              Text(
                '\$ 32.00',
                style: myTS14(
                    size: 18.sp, weight: FontWeight.w800, color: blackColor),
              ),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          SizedBox(
            width: 341.w,
            height: 41.h,
            child: CustomButton2(
              title: "Continue",
              size: 14.sp,
              onTap: () => Navigator.pushNamed(context, "/checkoutScreen2"),
            ),
          )
        ],
      ),
    );
  }
}
