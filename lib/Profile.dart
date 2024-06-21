import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            'user_name',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.64.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: CircleAvatar(
                  radius: 38.r,
                  backgroundColor: Color(0xFF7B6FC5),
                  child: SizedBox(
                      width: 40.w,
                      height: 40.h,
                      child: Image.asset(
                        "assets/pro.png",
                      )),
                ),
              ),
              SizedBox(
                width: 15.h,
              ),
              Column(
                children: [
                  Text(
                    '129',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Posts',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10.w),
              Column(
                children: [
                  Text(
                    '3578',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Follower',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10.w),
              Column(
                children: [
                  Text(
                    '3500',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Following',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Name',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Local business',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF8E8E8E),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'www.website.com',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFFD4E0ED),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 95.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(side: BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          'Follow',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      width: 95.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.black38,
                        shape: RoundedRectangleBorder(side: BorderSide(width: 1.5,color:Color(0xFF343434) ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          'Message',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      width: 95.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.black38,
                        shape: RoundedRectangleBorder(side: BorderSide(width: 1.5,color:Color(0xFF343434) ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          'Email',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.black38,
                        shape: RoundedRectangleBorder(side: BorderSide(width: 1.5,color:Color(0xFF343434) ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),child: Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 30,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 10),
            child: Row(
              children: [
                CircleAvatar(radius: 39.r,backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 38.r,
                    backgroundColor: Color(0xFF7B6FC5),
                    child: SizedBox(
                        width: 40.w,
                        height: 40.h,
                        child: Image.asset(
                          "assets/pro.png",
                        )),
                  ),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 39.r,backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 38.r,
                    backgroundColor: Color(0xFF7B6FC5),
                    child: SizedBox(
                        width: 40.w,
                        height: 40.h,
                        child: Image.asset(
                          "assets/pro.png",
                        )),
                  ),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 39.r,backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 38.r,
                    backgroundColor: Color(0xFF7B6FC5),
                    child: SizedBox(
                        width: 40.w,
                        height: 40.h,
                        child: Image.asset(
                          "assets/pro.png",
                        )),
                  ),
                ),
                SizedBox(width: 10.w,),
                CircleAvatar(radius: 39.r,backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 38.r,
                    backgroundColor: Color(0xFF7B6FC5),
                    child: SizedBox(
                        width: 40.w,
                        height: 40.h,
                        child: Image.asset(
                          "assets/pro.png",
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
