import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../common/widgets/custom_button2.dart';

class CheckoutScreen3 extends StatelessWidget {
  const CheckoutScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      body: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                icCancel,
                width: 33.w,
                height: 33.h,
              ),
            ),
          ),
          SizedBox(
            height: 53.h,
          ),
          Center(
            child: Image.asset(
              icCheckout3,
              width: 236.w,
              height: 33.h,
            ),
          ),
          SizedBox(
            height: 47.h,
          ),
          Image.asset(
            icTick1,
            width: 110.w,
            height: 100.h,
          ),
          SizedBox(
            height: 54.h,
          ),
          SizedBox(
              width: 342.w,
              height: 47.h,
              child: CustomButton2(
                onTap: () => Navigator.pushNamed(
                    context, '/serviceProviderProfileScreen'),
                title: proceed,
                size: 14.sp,
              )),
        ],
      ),
    );
  }
}
