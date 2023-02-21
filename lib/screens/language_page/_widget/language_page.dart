import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';

import 'package:animate_do/animate_do.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  var til = "ru";
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              SizedBox(
                height: 80.h,
                width: 375.w,
              ),
              SizedBox(
                height: 30.h,
                width: 100.w,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 67.h,), 
              Text('data')
            ],
          ),
        ),
      ),
    );
  }
}
