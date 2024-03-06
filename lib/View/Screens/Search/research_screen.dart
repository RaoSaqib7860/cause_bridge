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
              profileImage: 'assets/asset/man.png',
              profileName: 'Benjamin Dangais',
              profileSubTitle: 'United State',
              title: 'Why Volcano Explodes ?',
              description: 'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
              commentText: '10',
              likeText: '122',
            ),
          );
        },)
    );
  }
}
