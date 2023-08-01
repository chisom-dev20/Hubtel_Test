
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel/global_variables.dart';



Widget headDate(){
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Container(
      width: 87,
      height: 26,
      decoration: boxDeco(radius: 13, color: Color.fromRGBO(230, 234, 237, 1)),
      child: Center(child: Text('May 24, 2022', style: ntstyle(size: 10, weight: 600, color: Color.fromRGBO(156, 171, 184, 1)),)),
    ),
  );
}



Widget singleCard(bool success, context){
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color.fromRGBO(230, 234, 237, 1)) 
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('14:45PM', style: ntstyle(size: 12, weight: 400, color: Color.fromRGBO(156, 171, 184, 1)),),
          spacer(11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(success? 'assets/images/momo.png' : 'assets/images/absa.png', height: 39,),
                  hspacer(8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text('Nwankwo Chisom Emmanuel Rockson Kwabena Uncle Ebo', maxLines: 2, overflow: TextOverflow.ellipsis, style: ntstyle(size: 14, weight: 400, color: black),)),
                  spacer(8)
                ],
              ),
    
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: boxDeco(radius: 13, color: success? Color.fromRGBO(219, 247, 224, 1): Color.fromRGBO(253, 176, 172, 1)),
                child: Row(children: [
                  Icon(success? Icons.check_circle : Icons.cancel, size: 12, color: success? Color.fromRGBO(112, 224, 131, 1) :Color.fromRGBO(153, 35, 29, 1) ),
                  hspacer(4),
                  Text(success? 'Successful' : 'Failed', style: ntstyle(size: 10, weight: 500, color: success? Color.fromRGBO(112, 224, 131, 1) : Color.fromRGBO(153, 35, 29, 1),))
                ],),
              )
            ],
          ),

          spacer(6),
    
          Padding(
            padding: const EdgeInsets.only(left: 44.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('024 123 4567', style: ntstyle(size: 14, weight: 400, color: Color.fromRGBO(158, 173, 186, 1))),
                Text('GHS 500', style: ntstyle(size: 14, weight: 700, color: black),)
              ],
            ),
          ),
    
          spacer(16),
    
          Divider(color: Color.fromRGBO(230, 234, 237, 1), height: 0,),
    
          spacer(16),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/svgs/person.svg'),
                  hspacer(8),
                  Text('Personal', style: ntstyle(size: 12, weight: 400, color: black),),
                  hspacer(8),
                  Text('Cool your heart wai', style: ntstyle(size: 12, weight: 300, color: black),),
                ],
              ),

              success?
              Icon(Icons.star, color: Color.fromRGBO(254, 224, 102, 1),)
              :
              SizedBox.shrink()
            ],
          ),

          spacer(16),
        ],
      ),
    ),
  );
}

