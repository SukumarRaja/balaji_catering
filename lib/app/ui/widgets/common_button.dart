import 'package:flutter/material.dart';

import '../themes/colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
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
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontFamily: 'bold', color: Colors.white),
          ),
        ),
      ),
    );
  }
}
