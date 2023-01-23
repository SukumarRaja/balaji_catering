import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:balaji_catering/pages/addItems.dart';
import 'package:balaji_catering/pages/addPaymentMethod.dart';
import 'package:balaji_catering/pages/applyFilter.dart';
import 'package:balaji_catering/pages/checkout.dart';
import 'package:balaji_catering/pages/filter.dart';
import 'package:balaji_catering/pages/forgotPassword.dart';
import 'package:balaji_catering/pages/home.dart';
import 'package:balaji_catering/pages/manageProfile.dart';
import 'package:balaji_catering/pages/myAddress.dart';
import 'package:balaji_catering/pages/myCards.dart';
import 'package:balaji_catering/pages/myCart.dart';
import 'package:balaji_catering/pages/myOrder.dart';
import 'package:balaji_catering/pages/mySaved.dart';
import 'package:balaji_catering/pages/nearMe.dart';
import 'package:balaji_catering/pages/orderTracking.dart';
import 'package:balaji_catering/pages/profile.dart';
import 'package:balaji_catering/pages/search.dart';
import 'package:balaji_catering/pages/shopYouSelect.dart';
import 'package:balaji_catering/pages/signIn.dart';
import 'package:balaji_catering/pages/signUp.dart';
import 'package:balaji_catering/pages/slider.dart';
import 'package:balaji_catering/helper/style.dart';
import 'package:balaji_catering/pages/tabs.dart';

import 'app/ui/pages/onboard.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodDoor',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
      routes: {
        // slider.page_id: (context) => slider(),
        signIn.page_id: (context) => signIn(),
        signUp.page_id: (context) => signUp(),
        forgotPassword.page_id: (context) => forgotPassword(),
        tabs.page_id: (context) => tabs(),
        homeScreen.page_id: (context) => homeScreen(),
        myAddress.page_id: (context) => myAddress(),
        myOrder.page_id: (context) => myOrder(),
        mySaved.page_id: (context) => mySaved(),
        profile.page_id: (context) => profile(),
        search.page_id: (context) => search(),
        filter.page_id: (context) => filter(),
        shopYouSelect.page_id: (context) => shopYouSelect(),
        addItems.page_id: (context) => addItems(),
        myCart.page_id: (context) => myCart(),
        checkout.page_id: (context) => checkout(),
        addPaymentMethod.page_id: (context) => addPaymentMethod(),
        myCards.page_id: (context) => myCards(),
        manageProfile.page_id: (context) => manageProfile(),
        applyFilter.page_id: (context) => applyFilter(),
        nearMe.page_id: (context) => nearMe(),
        orderTracking.page_id: (context) => orderTracking(),
      },
    );
  }
}
