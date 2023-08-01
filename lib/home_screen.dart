// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel/global_variables.dart';
import 'package:hubtel/home_widgets.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          spacer(MediaQuery.of(context).padding.top + 20),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Container(    
              height: 35,
              width: double.infinity,
              decoration: boxDeco(color: Color.fromRGBO(230, 234, 237, 1), radius: 6),
              child: Row(children: [
                singleTab('History', 0),
                hspacer(3),
                singleTab('Transaction Summary', 1)
              ]),
              ),
            ),

          Divider(height: 0, color: Color.fromRGBO(0, 0, 0, 0.05),),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color.fromRGBO(230, 234, 237, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black,),
                        hintText: 'Search',
                        border: InputBorder.none,
                        hintStyle: ntstyle(size: 14, weight: 400, color: Color.fromRGBO(156, 171, 184, 1))
                      ),
                    ),
                  ),
                ),
                hspacer(5),
                SvgPicture.asset('assets/svgs/filter.svg', color: black,)
              ],
            ),
          ),

          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  singleDateCards(),
                  singleDateCards(),
                ],
              ),
            ),
          ))
        ],
      ),


      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 56,
          width: 158,
          decoration: boxDeco(radius: 6, color: Color.fromRGBO(1, 199, 177, 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle, size: 32, color: white,),
              hspacer(8),
              Text('SEND NEW', style: ntstyle(size: 14, weight: 700, color: Color.fromRGBO(255, 255, 255, 1)),)
            ],
          ),
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 64,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromRGBO(204, 243, 239, 1),
                radius: 20,
                child: SvgPicture.asset('assets/svgs/home.svg'),
              ),
      
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0),
                    child: Image.asset('assets/images/send.png', height: 35,),
                  ),
                  spacer(1),
                  Text('Send', style: ntstyle(size: 10, weight: 400, color: Color.fromRGBO(203, 203, 203, 1)),)
                ],
              ),
      
               Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/history.png', height: 35,),
                  spacer(1),
                  Text('History', style: ntstyle(size: 10, weight: 800, color: black),)
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/scheduled.png', height: 35,),
                  spacer(1),
                  Text('Scheduled', style: ntstyle(size: 10, weight: 400, color: Color.fromRGBO(203, 203, 203, 1)),)
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }


  int screenIndex = 0;


  Widget singleTab(String text, int index){
    return InkWell(
      onTap: (){
        setState(() {
          screenIndex = index;
        });
      },
      child: screenIndex == index?
      Padding(
        padding: const EdgeInsets.all(2),
        child: SizedBox(
          child: Container(
            height: 35,
            width: 168,
            decoration: boxDeco(radius: 6, color: white),
            child: Center(child: Text(text, style: ntstyle(size: 14, weight:  700, color: black))),
          ),
        ),
      )
        :
        SizedBox(
          height: 35,
          width: 155,
          child: Center(child: Text(text, style: ntstyle(size: 14, weight: 400, color: black.withOpacity(0.2)),)
        )
      )
    );
}


  Widget singleDateCards(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headDate(),
          singleCard(true, context),
          singleCard(false, context),
        ],
      ),
    );
  }
}