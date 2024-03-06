import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class TageScreen extends StatefulWidget {
  const TageScreen({Key? key}) : super(key: key);

  @override
  State<TageScreen> createState() => _TageScreenState();
}

class _TageScreenState extends State<TageScreen> {
  List? tageList = [
    '#Tags',
        '#Account',
        '#Accounts',
        '#johndeo',
        '#johndeomommy',
        '#johndeofunny',
        '#Tags',
        '#Tags',
        '#Tags',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 95.w,
            child: Wrap(
                children: tageList!
                    .map((e) => Row(
                  mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 6),
                                    child: Text('${e}',
                                        style:  TextStyle(
                                            color: Colors.grey, fontSize: 11.sp)),
                                  ),
                                ),
                              ),
                        ),
                      ],
                    ))
                    .toList()),
          ),
          SizedBox(height: 2.h,),
          Expanded(child: Container(
            child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  //height: 6.h,
                  //width: 95.w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: 6.h,
                          // width: 80.w,
                          child: Row(
                            children: [
                              Container(
                                height: 6.h,
                                width: 10.w,
                                // decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     border: Border.all(width: 1.5,color: Colors.green)
                                // ),
                                child:  Center(
                                  child: Text('#',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25.sp)),
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height:0.5.h,),
                                  Text(
                                    '#Chineze_afamefuna',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 0.3.h,),
                                  Text(
                                    '10 Posts',
                                    style: TextStyle(
                                      color: Colors.green.withAlpha(150),
                                      fontSize: 13.sp,

                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.close,color: Colors.black87.withAlpha(150),size: 4.5.w),
                      ],
                    ),
                  ),
                ),
              ),),
          )),
        ],
      ),
    );
  }
}
