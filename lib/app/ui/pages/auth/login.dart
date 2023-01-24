// import 'package:balaji_catering/app/ui/themes/app_font_size.dart';
// import 'package:balaji_catering/app/ui/themes/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:balaji_catering/pages/tabs.dart';
// import 'package:get/get.dart';
// import '../../../controller/auth.dart';
// import '../../forgot_password.dart';
// import '../../widgets/common_button.dart';
// import '../../widgets/common_text.dart';
// import '../../widgets/common_textform_field.dart';
// import 'register.dart';
//
// class Login extends StatelessWidget {
//   Login({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: buildBody(context),
//       ),
//     );
//   }
//
//   Widget buildBody(context) {
//     return Center(
//       child: SingleChildScrollView(
//         reverse: true,
//         child: Column(
//           children: [
//             buildTitle(),
//             Form(
//                 // key: AuthController.to.loginKey,
//                 child: Column(
//               children: [
//                 CommonTextFormField(
//                     hintText: "Enter your email",
//                     controller: AuthController.to.lEmail,
//                     validator: (data) {
//                       if (data!.isEmpty || data == "") {
//                         return "Email field required";
//                       }
//                       return null;
//                     }),
//                 CommonTextFormField(
//                     hintText: "Enter your password",
//                     obscureText: true,
//                     controller: AuthController.to.lPassword,
//                     validator: (data) {
//                       if (data!.isEmpty || data == "") {
//                         return "Password field required";
//                       } else if (data.length < 6) {
//                         return "Password atleast 6 character";
//                       }
//                       return null;
//                     }),
//               ],
//             )),
//             buildForgotButton(),
//             CommonButton(
//               text: "Login",
//               onPressed: () {},
//             ),
//             buildTitleSecond(),
//             buildORcontent(),
//             buildSocialButton(),
//             // buildPrivacyTitle(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildTitle() {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 30),
//       child: Column(
//         children: [
//           Text(
//             'Login',
//             style: TextStyle(
//                 fontFamily: 'bold', color: Colors.black, fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildTitleSecond() {
//     return Padding(
//       padding: EdgeInsets.only(top: 10, bottom: 30),
//       child: Wrap(
//         children: [
//           Text(
//             'Don\'t have account ?',
//             style: TextStyle(
//                 fontFamily: 'medium', color: Colors.black, fontSize: 16),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           InkWell(
//             onTap: () {
//               Get.to(() => Register());
//             },
//             child: Text(
//               'Sign up',
//               style: TextStyle(
//                   fontFamily: 'medium',
//                   color: AppColors.secondary,
//                   fontSize: 16),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildInputContent(txt, icn) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             child: TextField(
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//                 hintText: '$txt',
//                 suffixIcon: icn,
//                 contentPadding:
//                     const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Color(0xFFFEBC34)),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.transparent),
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildForgotButton() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         GestureDetector(
//           onTap: () {
//             Get.to(() => ForgotPassword());
//           },
//           child: CommonText(
//             text: 'Forgot Password ?',
//             fontSize: AppFontSize.fourteen,
//             fontColor: AppColors.secondary,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget buildORcontent() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Container(
//           width: 100,
//           decoration: BoxDecoration(
//               border: Border(
//             bottom: BorderSide(color: Colors.grey),
//           )),
//         ),
//         Text(
//           'Or Signin With',
//           style: TextStyle(color: Colors.grey),
//         ),
//         Container(
//           width: 100,
//           decoration: BoxDecoration(
//               border: Border(
//             bottom: BorderSide(color: Colors.grey),
//           )),
//         ),
//       ],
//     );
//   }
//
//   Widget buildSocialButton() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 40.0, bottom: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           InkWell(
//             onTap: () {},
//             child: Container(
//               width: 150,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(50.0),
//                 ),
//                 color: Color(0xFF4267B2),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.facebook,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     'Facebook',
//                     style: TextStyle(
//                         color: Colors.white, fontSize: 15, fontFamily: 'bold'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {
//               // Navigator.of(context)
//               //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
//             },
//             child: Container(
//               height: 40,
//               width: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(50.0),
//                 ),
//                 color: Color(0xFFEA4235),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.fmd_good,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     'Google',
//                     style: TextStyle(
//                         color: Colors.white, fontSize: 15, fontFamily: 'bold'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildPrivacyTitle() {
//     return Column(
//       children: [
//         SizedBox(
//           height: 30,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10),
//           child: InkWell(
//             onTap: () {
//               // Navigator.push(context,
//               //     MaterialPageRoute(builder: (context) => touchIdPage()));
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(0),
//                   child: SizedBox.fromSize(
//                     size: Size.fromRadius(10),
//                     child: FittedBox(
//                       child: Image.asset(
//                         'assets/images/t1.png',
//                         color: Colors.red,
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   'Sign in Using Touch ID',
//                   style: TextStyle(color: Colors.black, fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         InkWell(
//           onTap: () {
//             // Navigator.push(
//             //     context, MaterialPageRoute(builder: (context) => faceIdPage()));
//           },
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(0),
//                 child: SizedBox.fromSize(
//                   size: Size.fromRadius(10),
//                   child: FittedBox(
//                     child: Image.asset(
//                       'assets/images/f1.png',
//                       color: Colors.red,
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Sign in With Face ID',
//                 style: TextStyle(color: Colors.black, fontSize: 12),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:balaji_catering/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth.dart';
import '../../forgot_password.dart';
import '../../themes/app_font_size.dart';
import '../../themes/colors.dart';
import '../../widgets/common_text.dart';
import '../../widgets/common_textform_field.dart';
import 'register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: media.height * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: media.width * 0.05),
              child: const CommonText(
                text: "Login",
                fontSize: AppFontSize.twentyFour,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Form(
                key: AuthController.to.loginKey,
                child: Column(
                  children: [
                    CommonTextFormField(
                        hintText: "Enter your email",
                        controller: AuthController.to.lEmail,
                        validator: (data) {
                          if (data!.isEmpty || data == "") {
                            return "Email field required";
                          }
                          return null;
                        }),
                    CommonTextFormField(
                        hintText: "Enter your password",
                        obscureText: true,
                        controller: AuthController.to.lPassword,
                        validator: (data) {
                          if (data!.isEmpty || data == "") {
                            return "Password field required";
                          } else if (data.length < 6) {
                            return "Password atleast 6 character";
                          }
                          return null;
                        }),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Get.to(() => const ForgotPassword());
                    },
                    child: const CommonText(
                      text: "Forgot Password?",
                      fontColor: AppColors.primary,
                    ))
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => tabs());
              },
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: AppColors.primary,
                    gradient: const LinearGradient(colors: [
                      AppColors.first,
                      AppColors.second,
                      AppColors.third,
                    ], begin: Alignment.topRight, end: Alignment.topLeft),
                  ),
                  child: const Center(
                    child: CommonText(
                      text: "Login",
                      fontColor: AppColors.white,
                      fontSize: AppFontSize.eighteen,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CommonText(text: "Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Get.to(() => const Register());
                    },
                    child: const CommonText(
                      text: "Register",
                      fontColor: AppColors.primary,
                    ))
              ],
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            buildOrContent(),
            SizedBox(
              height: media.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/google.png")),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: media.width * 0.05,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/facebook.jpg")),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: media.width * 0.05)
          ],
        ),
      ),
    ));
  }

  Widget buildOrContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
        ),
        Text(
          'Or Signin With',
          style: TextStyle(color: Colors.grey),
        ),
        Container(
          width: 100,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
        ),
      ],
    );
  }
}
