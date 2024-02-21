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
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 12)),
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
                  height: 6.h,
                  //width: 95.w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 6.h,
                          width: 80.w,
                          child: Row(
                            children: [
                              Container(
                                height: 6.h,
                                width: 10.w,
                                // decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     border: Border.all(width: 1.5,color: Colors.green)
                                // ),
                                child: const Center(
                                  child: Text('#',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 24)),
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height:0.5.h,),
                                  Text(
                                    'Chineze_afamefuna',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    'United State',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 12.sp,

                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.close,color: Colors.grey.shade500,size: 18),
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
