import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../core/controller/signup_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signupController = Provider.of<SignupController>(context);
    return Scaffold(
      backgroundColor: nBColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150.h),
            SizedBox(
                width: 150.w,
                height: 150.h,
                child: Image.asset(
                  icLogo,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 175.h,
            ),
            // Text(
            //   appName,
            //   style: myTS14(size: 25.sp, color: wColor),
            // ),
            // SizedBox(
            //   height: 90.h,
            // ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/loginScreen');
                signupController.getRole('customer');
              },
              child: Container(
                width: 341.w,
                height: 48.h,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: lBColor),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Center(
                  child: Text(
                    asCustomer,
                    style: myTS14(
                        color: wColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/loginScreen');
                signupController.getRole('technician');
              },
              child: Container(
                width: 341.w,
                height: 48.h,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: lBColor),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Center(
                  child: Text(
                    "Technician Sign In",
                    style: myTS14(
                        color: wColor, size: 14.sp, weight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
