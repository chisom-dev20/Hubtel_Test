// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color black = Colors.black;
Color white = Colors.white;


BoxDecoration boxDeco({Color? color, required double? radius, Color? borderColor}) => BoxDecoration(
    borderRadius: BorderRadius.circular(radius!),
    border: borderColor != null? Border.all(width: 1, color: borderColor) : null,
    color: color
);



ntstyle({required double size, required int weight, color, double? height}){
  FontWeight fontWeight = FontWeight.w400;

  switch(weight){
    case 300:
    fontWeight = FontWeight.w300;
    break;

    case 400:
    fontWeight = FontWeight.w400;
    break;

    case 500:
    fontWeight = FontWeight.w500;
    break;

    case 600:
    fontWeight = FontWeight.w600;
    break;

    case 700:
    fontWeight = FontWeight.w700;
    break;

    case 800:
    fontWeight = FontWeight.w800;
    break;

    case 900:
    fontWeight = FontWeight.w900;
    break;
  }

  return GoogleFonts.nunitoSans(fontSize: size, fontWeight: fontWeight, color: color, height: height);
}


hspacer(double width){
  return SizedBox(
    width: width,
  );
}


spacer(double height){
  return SizedBox(
    height: height
  );
}
