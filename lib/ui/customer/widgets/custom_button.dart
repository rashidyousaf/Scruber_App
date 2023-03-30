import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/conts.dart';

class CustmButton extends StatelessWidget {
  const CustmButton({super.key, this.onTap});
  final VoidCallback? onTap;
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
        child: Icon(
          Icons.arrow_forward,
          color: wColor,
          size: 28.sp,
        ),
      ),
    );
  }
}
