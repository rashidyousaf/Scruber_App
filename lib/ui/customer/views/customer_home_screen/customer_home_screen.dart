import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_button2.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 40.0.w),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                icNotification,
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: nBColor,
        child: ListView(
          // Important: Remove any padding from the ListView.
          // padding: EdgeInsets.zero,
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
                    home,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () {},
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
              onTap: () => Navigator.pushNamed(context, "/bookingScreen"),
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
                    mycars,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/availablecarsScreen'),
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
                    icFavorite,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    favorite,
                    style: myTS14(
                        color: greyColor, size: 16.sp, weight: FontWeight.w600),
                  ),
                ],
              ),
              onTap: () => Navigator.pushNamed(context, '/favoritesScreen'),
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
            height: 293.h,
            decoration: BoxDecoration(
                color: wColor,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30.r))),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      // this is car column
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, '/availablecarsScreen'),
                        child: Column(
                          children: [
                            Image.asset(
                              icmCar,
                              width: 50.w,
                              height: 41.h,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "Vehicle",
                              style: myTS14(
                                  color: nBColor,
                                  size: 16.sp,
                                  weight: FontWeight.w500),
                            ),
                            Text(
                              notSelected,
                              style: myTS14(
                                  color: blac2kColor,
                                  size: 12.sp,
                                  weight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 57.w),
                      // this is service column
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/serviceScreen"),
                        child: Column(
                          children: [
                            Image.asset(
                              icService,
                              width: 50.w,
                              height: 50.h,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "Wash Type",
                              style: myTS14(
                                  color: nBColor,
                                  size: 16.sp,
                                  weight: FontWeight.w500),
                            ),
                            Text(
                              notSelected,
                              style: myTS14(
                                  color: blac2kColor,
                                  size: 12.sp,
                                  weight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      // this is time column
                      SizedBox(width: 57.w),
                      Column(
                        children: [
                          InkWell(
                            onTap: () =>
                                Navigator.pushNamed(context, '/timeSlotScreen'),
                            child: Image.asset(
                              icTime,
                              width: 50.w,
                              height: 50.h,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            time,
                            style: myTS14(
                                color: nBColor,
                                size: 16.sp,
                                weight: FontWeight.w500),
                          ),
                          Text(
                            notSelected,
                            style: myTS14(
                                color: blac2kColor,
                                size: 12.sp,
                                weight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(width: 24.w),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Divider(
                    thickness: 1.5.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 24.w),
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
                    height: 5.h,
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
                          child: const CustomButton2(
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

// void openBottomSheet(BuildContext context) {
//   showModalBottomSheet<void>(
//     // this is for don't drag into bottom
//     // enableDrag: false,

//     // this is for dismise when click on screen
//     // isDismissible: false,

//     // height adjust according to widgets
//     // isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//       top: Radius.circular(30.r),
//     )),
//     context: context,
//     builder: (BuildContext context) {
//       return

// }
