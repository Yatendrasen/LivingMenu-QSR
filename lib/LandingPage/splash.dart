import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:living_menu_qsr/LeftMenu/mainScreen.dart';

import '../Constants/animatedRoute.dart';
import '../Constants/appFontSizes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late double w, h;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      // Navigator.pushAndRemoveUntil(context, AnimatedRoute.createRouteRightToLeft(BottomTab()), (route) => false);
      // if(isLogin){
        Navigator.pushAndRemoveUntil(
            context, AnimatedRoute.createRouteRightToLeft(MainScreen()), (
            route) => false);
      /*}else {
        Navigator.pushAndRemoveUntil(
            context, AnimatedRoute.createRouteRightToLeft(Login()), (
            route) => false);
      }*/
    });
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    AppFontSizes fontSizes = AppFontSizes(context);
    // TODO: implement build
    return Container(
      height: h,
      width: w,
      child: Center(
        child: Text('Quick Serving Restaurant',
          style: TextStyle(
            fontFamily: 'Poppins_semi_bold',
            fontWeight: FontWeight.w500,
            fontSize: 16,
              color: Colors.black
          ),
        ),
      ),
    );
  }

}
