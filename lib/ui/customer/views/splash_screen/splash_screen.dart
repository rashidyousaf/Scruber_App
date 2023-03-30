import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/conts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, "/homeScreen", (Route<dynamic> route) => false);
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 322.h),
            SizedBox(
                width: 200.w,
                height: 200.h,
                child: Image.asset(
                  icLogo,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 100.h,
            ),
            SizedBox(
              width: 40.w,
              height: 40.h,
              child: const CircularProgressIndicator(
                color: lBColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
