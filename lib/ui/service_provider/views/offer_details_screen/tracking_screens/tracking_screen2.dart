import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_appbar_widget.dart';

import '../../../../customer/widgets/custom_button.dart';

class TrackingScreen2 extends StatelessWidget {
  const TrackingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: serviceTracking,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 49.h,
            ),
            Image.asset(
              progress2,
              width: 327.w,
              height: 33.h,
            ),
            SizedBox(
              height: 98.h,
            ),
            // this section map
            Image.asset(
              icMapOffer,
              width: 367.w,
              height: 200.h,
            ),
            // this section for button
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Text(
                  "On My Way",
                  style: myTS14(
                    color: greyColor,
                    size: 16.sp,
                    weight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustmButton(
                  onTap: () => Navigator.pushNamed(context, '/trackingScreen3'),
                ),
                SizedBox(
                  width: 24.w,
                ),
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
          ],
        ),
      ),
    );
  }
}
