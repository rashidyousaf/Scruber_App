import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/conts.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2(
      {super.key, required this.title, this.size = 10, this.onTap});
  final String title;
  final double? size;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r), color: bColor),
        child: Center(
          child: Text(
            title,
            style: myTS14(size: size, weight: FontWeight.w400, color: wColor),
          ),
        ),
      ),
    );
  }
}
