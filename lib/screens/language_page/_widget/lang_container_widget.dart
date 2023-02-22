import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LangContainer extends StatelessWidget {
  final dynamic topBorder;
  final dynamic bottomBorder;
  final dynamic name;
  final dynamic flag;
  final Color rang;
  final Color chiziqRangi;
  const LangContainer(
      {Key? key,
      this.bottomBorder,
      this.topBorder,
      required this.flag,
      required this.rang,
      required this.chiziqRangi,
      this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Container(
      height: 80,
      width: 343,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(topBorder ?? 0),
            bottom: Radius.circular(bottomBorder ?? 0),
          ),
          color: rang,
          border: Border.all(color: chiziqRangi, width: 1,),),
      child: Row(
        children: [
          const SizedBox(width: 16),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(flag),
          ),
          const SizedBox(width:18),
          Text(
            name ?? "",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}