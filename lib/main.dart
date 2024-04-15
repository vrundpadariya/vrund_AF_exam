import 'package:exam_af/app/views/splash_screen/views/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/views/auction/views/auctionpage.dart';
import 'app/views/homepage/views/homepage.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(
        name: '/',
        page: () => SplashScreen(),
      ),
      GetPage(
        name: '/home',
        page: () => homepage(),
      ),
      GetPage(
        name: '/auction',
        page: () => auctionpage(),
      )
    ],
  ));
}
