import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';

import '../../Custom Widget/custom_home_card.dart';
import '../Comments Screen/comment_screen.dart';
import '../Post Detail/post_detail_screen.dart';
import 'package:get/get.dart';

class ResearchScreen extends StatefulWidget {
  const ResearchScreen({Key? key}) : super(key: key);

  @override
  State<ResearchScreen> createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      child: ListView.builder(
        itemCount: 2,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: CustomHomeCard(
              cardOnTap:  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailScreen(),));
              },
              commentOnTap: () {
                Get.offAll(()=>CommentScreen());
              },
            ),
            // Column(
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailScreen(),));
            //       },
            //       child: Container(
            //         height: 38.h,
            //         width: 90.w,
            //         decoration: BoxDecoration(
            //           color: Colors.green.shade50,
            //           borderRadius: BorderRadius.circular(30),
            //         ),
            //         child: Stack(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 3.w),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   SizedBox(height: 1.5.h,),
            //                   Padding(
            //                     padding: EdgeInsets.symmetric(horizontal: 1.w),
            //                     child: Row(
            //                       children: [
            //                         Container(
            //                           height: 4.5.h,
            //                           width: 9.w,
            //                           decoration: BoxDecoration(
            //                               shape: BoxShape.circle,
            //                               border: Border.all(width: 1.5,color: Colors.green)
            //                           ),
            //                           child: Center(
            //                             child: Icon(Icons.person,size: 2.h,),
            //                           ),
            //                         ),
            //                         SizedBox(width: 2.w,),
            //                         Column(
            //                           crossAxisAlignment: CrossAxisAlignment.start,
            //                           children: [
            //                             Text(
            //                               'Chineze_afamefuna',
            //                               style: TextStyle(
            //                                   color: Colors.black,
            //                                   fontSize: 13.sp,
            //                                   fontWeight: FontWeight.bold
            //                               ),
            //                             ),
            //                             SizedBox(height: 0.3.h,),
            //                             Text(
            //                               'China',
            //                               style: TextStyle(
            //                                 color: Colors.green,
            //                                 fontSize: 12.sp,
            //
            //                               ),
            //                             ),
            //
            //                           ],
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                   SizedBox(height: 1.h,),
            //                   Container(
            //                     height: 13.h,
            //                     child: ListView.builder(
            //                       itemCount: 3,
            //                       scrollDirection: Axis.horizontal,
            //                       //padding: EdgeInsets.symmetric(horizontal: 1.w),
            //                       itemBuilder: (context, index) {
            //                         return Row(
            //                           children: [
            //                             ClipRRect(
            //                               borderRadius: BorderRadius.circular(10),
            //                               child: Container(
            //                                 height: 13.h,
            //                                 width: 32.w,
            //                                 decoration: BoxDecoration(
            //                                     borderRadius: BorderRadius.circular(10),
            //                                     color: Colors.white
            //                                 ),
            //                                 child: Image(image: AssetImage('assets/asset/text.png'),fit: BoxFit.cover,),
            //                               ),
            //                             ),
            //                             SizedBox(width: 4.w,)
            //                           ],
            //                         );
            //                       },),
            //                   ),
            //                   SizedBox(height: 0.8.h,),
            //                   Text(
            //                     'Why Volcano Explodes ?',
            //                     style: TextStyle(
            //                         color: Color(0xff4AB866),
            //                         fontSize: 14.sp,
            //                         fontFamily: 'AlfaSlabOne'
            //                     ),
            //                   ),
            //                   Expanded(
            //                       child: Text(
            //                         'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
            //                         overflow: TextOverflow.ellipsis,
            //                         maxLines: 4,
            //                         style: TextStyle(
            //                             overflow: TextOverflow.ellipsis,
            //                             fontSize: 12.sp,
            //                             color: Color(0xff585858)
            //                         ),
            //                       ))
            //                 ],
            //               ),
            //             ),
            //             Positioned(
            //                 bottom: 0,
            //                 child: Container(
            //                   height: 5.5.h,
            //                   width: 90.w,
            //                   decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
            //                       color: Color(0xffa6aea8)
            //                   ),
            //                   child: Center(
            //                     child: Padding(
            //                       padding:  EdgeInsets.symmetric(horizontal: 5.w),
            //                       child: Row(
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Row(
            //                             children: [
            //                               GestureDetector(
            //                                   onTap: () {
            //                                     //Navigator.push(context, MaterialPageRoute(builder: (context) => CommentScreen(),));
            //                                     Get.off(()=>CommentScreen());
            //                                   },
            //                                   child: SvgPicture.asset('assets/svgs/Chat.svg',height: 3.h,)),
            //                               SizedBox(width: 1.w,),
            //                               Text(
            //                                 '10',
            //                                 style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 16.sp,
            //                                     fontWeight: FontWeight.bold
            //                                 ),
            //                               ),
            //                               SizedBox(width: 2.w,),
            //                               SvgPicture.asset('assets/svgs/like.svg',height: 3.h,),
            //                               SizedBox(width: 1.w,),
            //                               Text(
            //                                 '122',
            //                                 style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 16.sp,
            //                                     fontWeight: FontWeight.bold
            //                                 ),
            //                               )
            //                             ],
            //                           ),
            //                           Row(
            //                             children: [
            //                               SvgPicture.asset('assets/svgs/Send.svg',height: 2.3.h,),
            //                               SizedBox(width: 3.w,),
            //                               SvgPicture.asset('assets/svgs/Sub.svg',height: 2.3.h,),
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 )
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(height: 2.h,)
            //   ],
            // ),
          );
        },)
    );
  }
}
