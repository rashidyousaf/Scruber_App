import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrubr_client_app/const/conts.dart';

import '../../widgets/custom_addcar_widget.dart';
import '../../widgets/custom_appbar_widget.dart';

class AvailableCarsScreen extends StatelessWidget {
  const AvailableCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: nBColor,
        appBar: const CustomAppbar(
          car: icMiniCar,
          title: avaiableCars,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 36.h,
            ),
            const Center(child: CustomAddcarWidget()),
            SizedBox(
              height: 10.h,
            ),

            /// this portion add car container
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/addCarsScreen");
              },
              child: Container(
                width: 342.w,
                height: 220.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r), color: wColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      icAddNewCar,
                      height: 87.h,
                      width: 87.w,
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Text(
                      addnewCar,
                      style: myTS14(color: grey2Color),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
