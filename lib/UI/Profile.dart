import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instapro/Bloc/HighlightBloc/highlight_bloc.dart';
import 'package:instapro/Bloc/InstaBloc/insta_bloc.dart';
import 'package:instapro/Bloc/Post/post_bloc.dart';
import 'package:instapro/Bloc/TagBloc/tag_bloc.dart';
import 'package:instapro/Repository/ModelClass/HighlightModel.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';
import 'package:instapro/Repository/ModelClass/PostModel.dart';
import 'package:instapro/Repository/ModelClass/TagModel.dart';
import 'package:instapro/UI/Follower.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late InstaModel insta;
  late HighlightModel highlight;
  late PostModel post;
  late TagModel tag;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: SizedBox(
            height: 54.h,
            child: TextField(
              controller: controller,
              style: TextStyle(color: Colors.white),
              onSubmitted: (value) {
                BlocProvider.of<InstaBloc>(context)
                    .add(Fetchinsta(userName: controller.text));
                BlocProvider.of<HighlightBloc>(context)
                    .add(FetchHighlight(hightlight: controller.text));
                BlocProvider.of<PostBloc>(context)
                    .add(FeatchPost(post: controller.text));
                BlocProvider.of<TagBloc>(context)
                    .add(FeatchTag(tag: controller.text));
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: BlocBuilder<InstaBloc, InstaState>(builder: (context, state) {
            if (state is instaBlocLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is instaBlocError) {
              return Center(child: SizedBox());
            }
            if (state is instaBlocLoaded) {
              insta = BlocProvider.of<InstaBloc>(context).instaModel;
              print('hello' + insta.data!.mediaCount.toString());
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: CircleAvatar(
                            radius: 45.r,
                            backgroundImage: NetworkImage(
                                insta.data!.profilePicUrlHd.toString())),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Column(
                        children: [
                          Text(
                            insta.data!.mediaCount.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 21.sp,
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
                                fontSize: 21.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5.w),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Follower(userName: insta.data!.username.toString(), index: 0,)));
                        },
                        child: Column(
                          children: [
                            Text(
                              insta.data!.followerCount.toString(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21.sp,
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
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () { Navigator.of(context).push(
                            MaterialPageRoute(builder: (_)=> Follower(userName: insta.data!.username.toString(), index: 1,))); },
                        child: Column(
                          children: [
                            Text(
                              insta.data!.followingCount.toString(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21.sp,
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
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      insta.data!.fullName.toString(),
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
                    child: Row(children: [
                      Row(children: [
                        Container(
                          width: 120.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Follow',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
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
                          width: 120.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: Colors.black38,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.5, color: Color(0xFF343434)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Message',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
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
                          width: 110.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: Colors.black38,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.5, color: Color(0xFF343434)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Email',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
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
                          width: 40.w,
                          height: 40.h,
                          decoration: ShapeDecoration(
                            color: Colors.black38,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.5, color: Color(0xFF343434)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ]),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: BlocBuilder<HighlightBloc, HighlightState>(
                        builder: (context, state) {
                      if (state is highlightBlocloading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      if (state is highlightBlocError) {
                        return SizedBox();
                      }
                      if (state is highlightBlocloaded) {
                        highlight = BlocProvider.of<HighlightBloc>(context)
                            .highlightModel;
                        return SizedBox(
                          width: double.infinity.w,
                          height: 70.h,
                          child: ListView.separated(
                            itemCount: highlight.data!.items!.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, position) {
                              return CircleAvatar(
                                radius: 45.r,
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(1.2),
                                  child: CircleAvatar(
                                    radius: 50.r,
                                    backgroundImage: NetworkImage(highlight
                                        .data!
                                        .items![position]
                                        .coverMedia!
                                        .croppedImageVersion!
                                        .url
                                        .toString()),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, position) {
                              return SizedBox(
                                width: 2.w,
                              );
                            },
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    }),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40.h,
                    child: TabBar(
                      labelColor: Colors.white,
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.view_module_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Tab(
                            icon: Icon(
                          Icons.account_box_outlined,
                          color: Colors.white,
                          size: 38,
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      SizedBox(
                        width: 60.w,
                        height: 70.h,
                        child: BlocBuilder<PostBloc, PostState>(
                            builder: (context, state) {
                          if (state is PostBlocLoading) {
                            return Center(child: CircularProgressIndicator());
                          }
                          if (state is PostBlocError) {
                            return SizedBox();
                          }
                          if (state is PostBlocLoaded) {

                            post = BlocProvider.of<PostBloc>(context).postModel;
                            print("hi" + post.data!.items.toString());
                            return GridView.count(
                              crossAxisCount: 3,
                              shrinkWrap: true,
                              children: List.generate(
                                post.data!.items!.length,
                                (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(.5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: NetworkImage(post
                                              .data!
                                              .items![index]
                                              .imageVersions!
                                              .items![0]
                                              .url
                                              .toString()),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          } else {
                            return SizedBox();
                          }
                        }),
                      ),
                      SizedBox(
                        width: 60.w,
                        height: 70.h,
                        child: BlocBuilder<TagBloc, TagState>(
  builder: (context, state) {
    if (state is TagBlocLoading){
      return Center(child: CircularProgressIndicator());
    }
    if (state is TagBlocError){
      return SizedBox();
    }
    if(state is TagBlocLoaded){
      tag=BlocProvider.of<TagBloc>(context).tagModel;
    return GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          children: List.generate(
                         tag.data!.items!.length,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: NetworkImage(tag.data!.items![index].displayUrl.toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
  }else {return SizedBox();}}
),
                      ),
                    ]),
                  )
                ],
              );
            } else {
              return SizedBox();
            }
          }),
        ));
  }
}
