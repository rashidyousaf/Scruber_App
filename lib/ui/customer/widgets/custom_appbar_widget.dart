import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/conts.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title = "",
    this.micon,
    this.car = '',
    this.nicon = '',
    this.onTap,
  });

  final String? title;
  final String? car;
  final IconData? micon;
  final String? nicon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(top: 32.h, left: 24.w, right: 24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                icBack,
                width: 22.w,
                height: 17.h,
              )),
          SizedBox(
            width: 67.w,
          ),
          car == ''
              ? const SizedBox()
              : Image.asset(
                  car!,
                  width: 22.w,
                  height: 21.h,
                ),
          SizedBox(
            width: 9.w,
          ),
          SizedBox(
            width: 150.w,
            child: Text(title!,
                textAlign: TextAlign.center,
                style: myTS14(
                    size: 18.sp, color: wColor, weight: FontWeight.w500)),
          ),
          const Spacer(),
          nicon == ''
              ? const SizedBox()
              : Image.asset(
                  nicon!,
                  width: 24.w,
                  height: 26.h,
                ),
          SizedBox(
            width: 10.w,
          ),
          InkWell(
            onTap: onTap,
            child: Icon(
              micon,
              color: wColor,
              size: 30.sp,
            ),
          )
        ],
      ),
    ));
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 75.h);
}
