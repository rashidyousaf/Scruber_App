import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_appbar_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nBColor,
      appBar: const CustomAppbar(
        title: setting,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.h,
            ),
            Text(
              notifications,
              style:
                  myTS14(color: w2Color, size: 15.sp, weight: FontWeight.w400),
            ),
            SizedBox(
              height: 32.h,
            ),

            // this is notification section
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/notificationsScreen'),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    icActivities,
                    width: 16.w,
                    height: 13.47.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    activitiesNoti,
                    style: myTS14(
                        color: w2Color, size: 17.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.sp,
                    color: w2Color,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: w2Color,
              endIndent: 10.w,
              indent: 20.w,
            ),
            SizedBox(
              height: 12.h,
            ),
            //this secon portion
            Text(
              payment,
              style:
                  myTS14(color: w2Color, size: 15.sp, weight: FontWeight.w400),
            ),
            SizedBox(
              height: 32.h,
            ),
            // this secion for cards
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/cardsScreen'),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    icCards,
                    width: 16.w,
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    cards,
                    style: myTS14(
                        color: w2Color, size: 17.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.sp,
                    color: w2Color,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: w2Color,
              endIndent: 10.w,
              indent: 20.w,
            ),

            // this portion for change password
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, '/changepasswordScreen'),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    icLock,
                    width: 16.w,
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    changePass,
                    style: myTS14(
                        color: w2Color, size: 17.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.sp,
                    color: w2Color,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),

            Divider(
              color: w2Color,
              endIndent: 10.w,
              indent: 20.w,
            ),
            SizedBox(
              height: 12.h,
            ),
            // this portion for change privacy

            InkWell(
              onTap: () => Navigator.pushNamed(context, '/privacyScreen'),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    icPrivacy,
                    width: 16.w,
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    privacy,
                    style: myTS14(
                        color: w2Color, size: 17.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.sp,
                    color: w2Color,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),

            Divider(
              color: w2Color,
              endIndent: 10.w,
              indent: 20.w,
            ),
            SizedBox(
              height: 12.h,
            ),
            // this section for help
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/contactusScreen'),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    icPrivacy,
                    width: 16.w,
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    help,
                    style: myTS14(
                        color: w2Color, size: 17.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.sp,
                    color: w2Color,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),

            Divider(
              color: w2Color,
              endIndent: 10.w,
              indent: 20.w,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    );
  }
}
