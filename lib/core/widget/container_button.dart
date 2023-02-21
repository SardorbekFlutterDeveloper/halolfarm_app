import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContainerButton extends StatelessWidget {
  final dynamic top;
  final dynamic bottom;
  final dynamic name;
  final dynamic onTap;
  final dynamic color;
  final dynamic textColor;
  ContainerButton(
      {Key? key,
      this.top,
      this.bottom,
      this.name,
      this.onTap,
      this.color,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56.h,
        width: 343.w,
        margin: EdgeInsets.only(
          top: top ?? 0,
          bottom: bottom ?? 0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: color ?? ConsColors.green,
        ),
        child: Center(
          child: Text(
            name ?? " ",
            style: TextStyle(
              color: textColor,
              fontSize: 18.h,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onTap: onTap ?? (){},
    );
  }
}
