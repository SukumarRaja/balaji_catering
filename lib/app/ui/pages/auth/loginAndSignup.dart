import 'package:balaji_catering/app/ui/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'register.dart';

class LoginAndSignup extends StatelessWidget {
  LoginAndSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.srcOver),
                  image: AssetImage(
                    'assets/images/bck.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: buildBody(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody(context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Find and book chef & meal services near by you.',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          AppColors.secondaryFirst,
                          AppColors.secondarySecond,
                        ],
                      )),
                  child: Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(fontFamily: 'bold', color: Colors.white),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=>Register());
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.first,
                        AppColors.second,
                        AppColors.third,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontFamily: 'bold', color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Wrap(
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontFamily: 'medium',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'medium',
                            color: Color(0xFFFEBC34),
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
