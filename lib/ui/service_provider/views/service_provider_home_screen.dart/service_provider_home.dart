import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../../customer/widgets/custom_button2.dart';

class ServiceProviderHomeScreen extends StatelessWidget {
  const ServiceProviderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actions: <Widget>[
        //   Padding(
        //     padding: EdgeInsets.only(right: 40.0.w),
        //     child: GestureDetector(
        //       onTap: () {},
        //       child: Image.asset(
        //         icNotification,
        //         width: 24.w,
        //         height: 24.h,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      drawer: Drawer(
        backgroundColor: nBColor,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180.w,
                  height: 60.h,
                  child: Image.asset(
                    icLogo2,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 36.h,
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icHome,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    editProfile,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/editprofileScreen'),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icMyBooking,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    myBooings,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () =>
                  Navigator.pushNamed(context, "/providerbookingScreen1"),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icMyCar,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    myEarning,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/earningScreen'),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icLocation,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    myAddress,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/addressScreen'),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icContactus,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    contactUs,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/contactusScreen'),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icSetting,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    setting,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/settingScreen'),
            ),
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icLogout,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    logout,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            height: 175.h,
            decoration: BoxDecoration(
                color: wColor,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30.r))),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45.h,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 29.w),
                      Image.asset(
                        icLocation,
                        width: 28.50.w,
                        height: 44.34.h,
                      ),
                      SizedBox(width: 24.w),
                      SizedBox(
                        width: 224.w,
                        child: Text(
                          rightNowyouLocation,
                          style: myTS14(
                              size: 12.sp,
                              weight: FontWeight.w300,
                              color: blackColor.withOpacity(0.7)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(
                          right: 34.w,
                        ),
                        child: SizedBox(
                          height: 27.h,
                          width: 101.w,
                          child: CustomButton2(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/offerdetailsScreen');
                            },
                            title: updateAddress,
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
