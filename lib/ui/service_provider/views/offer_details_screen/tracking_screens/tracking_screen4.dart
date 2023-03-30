import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/ui/customer/widgets/custom_appbar_widget.dart';

class TrackingScreen4 extends StatelessWidget {
  const TrackingScreen4({super.key});

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
              progress1,
              width: 327.w,
              height: 33.h,
            ),
            const Spacer(),
            // this section map
            Image.asset(
              icCompletepop,
              width: 390.w,
              height: 425.h,
            ),
            // this section for button
          ],
        ),
      ),
    );
  }
}
