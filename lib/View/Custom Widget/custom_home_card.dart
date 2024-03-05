import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeCard extends StatefulWidget {
  Function()? profileOnTap;
  Function()? cardOnTap;
  Function()? commentOnTap;
   CustomHomeCard({Key? key,this.profileOnTap,this.cardOnTap,this.commentOnTap}) : super(key: key);

  @override
  State<CustomHomeCard> createState() => _CustomHomeCardState();
}

class _CustomHomeCardState extends State<CustomHomeCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.cardOnTap,
          child: Container(
            height: 36.h,
            width: 90.h,
            decoration: BoxDecoration(
              color: Color(0xffedf8f0),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1.5.h,
                      ),
                      GestureDetector(
                        onTap: widget.profileOnTap,
                        //     () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) =>
                        //             OtherProfileScreen(),
                        //       ));
                        // },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.w),
                          child: Row(
                            children: [
                              Container(
                                height: 4.5.h,
                                width: 9.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/asset/man.png'),
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Benjamin Dangais',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight:
                                        FontWeight.bold),
                                  ),
                                  SizedBox(height: 0.4.h,),
                                  Text(
                                    'United State',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.7.h,
                      ),
                      Container(
                        height: 13.h,
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          //padding: EdgeInsets.symmetric(horizontal: 1.w),
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(5),
                                  child: Container(
                                    height: 13.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(5),
                                        color: Colors.white),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/asset/text.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4.w,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Why Volcano Explodes ?',
                        style: TextStyle(
                          color: Color(0xff4AB866),
                          fontFamily: 'AlfaSlabOne',
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 0.7.h),
                      Expanded(
                          child: Text(
                            'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 12.sp,
                                color: Color(0xff585858)),
                          ))
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      height: 5.5.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Color(0xffa6aea8)),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                      onTap: widget.commentOnTap,
                                      //     () {
                                      //   // Navigator.push(
                                      //   //     context,
                                      //   //     MaterialPageRoute(
                                      //   //       builder: (context) =>
                                      //   //           CommentScreen(),
                                      //   //     ));
                                      //   //Get.off(()=>CommentScreen());
                                      // },
                                      child: SvgPicture.asset(
                                        'assets/svgs/Chat.svg',
                                        height: 3.h,
                                      )),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight:
                                        FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  SvgPicture.asset(
                                    'assets/svgs/like.svg',
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    '122',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight:
                                        FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svgs/Send.svg',
                                    height: 2.3.h,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  SvgPicture.asset(
                                    'assets/svgs/Sub.svg',
                                    height: 2.3.h,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        )
      ],
    );
  }
}
