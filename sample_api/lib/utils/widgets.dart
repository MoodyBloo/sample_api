import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/constants.dart';
import 'package:flutter/services.dart';

CircularProgressIndicator genericLoading = const CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation<Color>(NU_BLUE));

class InterFont extends StatelessWidget {
  const InterFont(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.left,
      this.letterSpacing = 0});

  final String text;
  final double fontSize, letterSpacing;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
        maxLines: 1,
      softWrap: false,
      style: TextStyle(
          fontFamily: 'Inter',
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }
}

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final onTap;
  final double height;
  final double width;
  final double fontSize;
  final String buttonName;
  final Icon icon;
  FontWeight fontWeight;
  Color bgColor;
  Color fontColor;
  CustomButton(
      {super.key,
      required this.onTap,
      required this.height,
      required this.width,
      this.buttonName = '',
      this.bgColor = NU_BLUE,
      this.fontColor = Colors.white,
      this.fontSize = 1,
      this.icon = const Icon(null),
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: buttonName == ''
              ? icon
              : Text(
                  buttonName,
                  style: TextStyle(
                    color: fontColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hintText;
  final double height;
  final double width;
  final double hintTextSize;
  final double fontSize;
  Icon prefixIcon;
  final TextEditingController controller;
  final Color fillColor;
  bool isObscure;
  TextInputType keyboardType;
  int maxLength;
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.height,
      required this.width,
      this.fillColor = Colors.black12,
      this.prefixIcon = const Icon(null),
      this.isObscure = false,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.hintTextSize,
      required this.fontSize,
      this.maxLength = 200});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      style: TextStyle(
        fontSize: fontSize,
      ),
      keyboardType: keyboardType,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
      ],
      decoration: InputDecoration(
          focusColor: Colors.black12,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.black12, fontSize: hintTextSize),
          hintText: hintText,
          fillColor: fillColor),
    );
  }
}

Widget CustomIconTextField(
    {required hintText,
    required height,
    required width,
    fillColor = Colors.black12,
    prefixIcon = const Icon(null),
    isObscure = false,
    required controller,
    required hintTextSize,
    required fontSize, required Null Function(dynamic value) onChanged}) {
  return TextField(
    controller: controller,
    obscureText: isObscure,
    style: TextStyle(
      fontSize: fontSize,
    ),
    decoration: InputDecoration(
        prefixIcon: prefixIcon,
        focusColor: Colors.black12,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.black12, fontSize: hintTextSize),
        hintText: hintText,
        fillColor: fillColor),
  );
}
