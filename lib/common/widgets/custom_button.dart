import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/conts.dart';

// ignore: must_be_immutable
class CustmButton extends StatelessWidget {
  CustmButton({super.key, this.onTap, this.loading = false});
  final VoidCallback? onTap;
  bool loading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 56.w,
          height: 34.h,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff00008E), Color(0xff0D8BD8)]),
              borderRadius: BorderRadius.circular(17.r),
              color: nBColor),
          child: loading
              ? Center(
                  child: SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.w,
                      color: wColor,
                    ),
                  ),
                )
              : Icon(
                  Icons.arrow_forward,
                  color: wColor,
                  size: 28.sp,
                )),
    );
  }
}
