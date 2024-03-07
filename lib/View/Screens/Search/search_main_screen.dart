import 'package:cause_bridge/View/Screens/Search/person_screen.dart';
import 'package:cause_bridge/View/Screens/Search/research_screen.dart';
import 'package:cause_bridge/View/Screens/Search/tages_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../Messages/mmessage_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int? index = 3;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Container(
              height: 24.h,
              width: 100.w,
              color: Color(0xff4AB866),
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                  Container(
                    height: 5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white
                      //border: Border.all(width: 0,color: Colors.white)
                    ),
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.black87.withAlpha(150),size: 5.w,),
                          contentPadding: EdgeInsets.only( top: 0.7.h,),
                          //enabled: true,
                          //isDense: true,
                          hintText: 'Name',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp
                          ),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                searchController.clear();
                              },
                              child: Icon(Icons.close,color: Colors.grey,size: 5.w,))
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            index = 1;
                            setState(() {

                            });
                          },
                          child: Container(
                             decoration: BoxDecoration(color: index == 1?Color(0xff54F67E):Colors.white,borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.75.h),
                                child: Text('All',style: TextStyle(color: index == 1?Colors.white: Colors.grey,fontSize: 12.sp)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w,),
                        InkWell(
                          onTap: (){
                            index = 2;
                            setState(() {

                            });
                          },
                          child: Container(
                             decoration: BoxDecoration(color:index == 2?Color(0xff54F67E): Colors.white,borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.75.h),
                                child: Text('Research',style: TextStyle(color:index == 2?Colors.white: Colors.grey,fontSize: 12.sp)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w,),
                        InkWell(
                          onTap: (){
                            index = 3;
                            setState(() {

                            });
                          },
                          child: Container(
                             decoration: BoxDecoration(color:index == 3?Color(0xff54F67E): Colors.white,borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.75.h),
                                child: Text('Person',style: TextStyle(color:index == 3?Colors.white: Colors.grey,fontSize: 12.sp)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w,),
                        InkWell(
                          onTap: (){
                            index = 4;
                            setState(() {

                            });
                          },
                          child: Container(
                             decoration: BoxDecoration(color:index == 4?Color(0xff54F67E): Colors.white,borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.75.h),
                                child: Text('Tags',style: TextStyle(color:index == 4?Colors.white: Colors.grey,fontSize: 12.sp)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text('Clear All',style: TextStyle(fontSize: 14,color: Colors.green,),),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Expanded(child: index == 2?ResearchScreen():index == 3?PersonScreen():TageScreen()),
          ],
        ),
      ),
    );
  }
}
