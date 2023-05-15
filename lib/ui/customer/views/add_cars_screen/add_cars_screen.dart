import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class AddCarsScreen extends StatelessWidget {
  const AddCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(icUperDesign),
          SizedBox(
            height: 30.h,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(15.h),
                clipBehavior: Clip.antiAlias,
                width: 97.w,
                height: 97.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: blackColor,
                ),
                child: Image.asset(
                  icProfileCar,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: 75.h,
                  left: 65.w,
                  child: Image.asset(
                    icPlus,
                    width: 21.76.w,
                    height: 21.76.w,
                  ))
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          // this section for app name
          Text(
            addProfilePic,
            style: myTS14(
                color: blackColor.withOpacity(0.4),
                size: 14.sp,
                weight: FontWeight.w400),
          ),
          SizedBox(
            height: 12.h,
          ),
          // this section for vehical type
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                vehicalType,
                style: myTS14(
                    size: 14.sp, weight: FontWeight.w400, color: blackColor),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),

          CustomTextfield(
            preIcon: Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 17.h, right: 5.w),
              child: Image.asset(
                icTypeCar,
              ),
            ),
            hint: type,
          ),
          SizedBox(
            height: 15.h,
          ),

          // this section for vehical model
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                vehicalModel,
                style: myTS14(
                    size: 14.sp, weight: FontWeight.w400, color: blackColor),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextfield(
            preIcon: Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 17.h, right: 5.w),
              child: Image.asset(
                icTypeCar,
              ),
            ),
            hint: model,
          ),
          SizedBox(
            height: 15.h,
          ),
          // this section for vehical nick name
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                vehicalNickName,
                style: myTS14(
                    size: 14.sp, weight: FontWeight.w400, color: blackColor),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextfield(
            preIcon: Padding(
              padding: EdgeInsets.all(8.h),
              child: Image.asset(
                icEdit,
              ),
            ),
            hint: name,
          ),
          SizedBox(
            height: 15.h,
          ),
          // this section for vehical color
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                vehicalColor,
                style: myTS14(
                    size: 14.sp, weight: FontWeight.w400, color: blackColor),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextfield(
            preIcon: Padding(
              padding: EdgeInsets.all(8.h),
              child: Image.asset(
                icColor,
              ),
            ),
            hint: enterColor,
          ),
          SizedBox(
            height: 99.h,
          ),

          Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        add,
                        textAlign: TextAlign.end,
                        style: myTS14(
                            size: 20.sp,
                            color: blackColor,
                            weight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CustmButton(
                        onTap: () {
                          Navigator.pushNamed(context, '/mapScreen');
                        },
                      ),
                      SizedBox(
                        width: 19.w,
                      ),
                    ],
                  ),
                ],
              ),
              // this section for design
              // Container(
              //   alignment: Alignment.centerLeft,
              //   width: 135.w,
              //   height: 312.h,
              //   child: Image.asset(
              //     icLowerDesign,
              //     fit: BoxFit.contain,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
