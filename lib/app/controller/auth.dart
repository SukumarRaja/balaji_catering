import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.put(AuthController());

  final loginKey = GlobalKey<FormState>();

  TextEditingController lEmail = TextEditingController();
  TextEditingController lPassword = TextEditingController();
}
