import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instapro/Bloc/FollowerBloc/follower_bloc.dart';
import 'package:instapro/Bloc/FollowingBloc/following_bloc.dart';
import 'package:instapro/Repository/ModelClass/FollowerModel.dart';
import 'package:instapro/Repository/ModelClass/FollowingModel.dart';
import 'package:instapro/UI/Newprofile.dart';

class Follower extends StatefulWidget {
  final String userName;
   final  int index;

  const Follower({super.key,required this.userName,
   required this.index});

  @override
  State<Follower> createState() => _FollowerState();
}

class _FollowerState extends State<Follower> {
  late FollowerModel id;
  late FollowingModel following;


  @override
  void initState() {
    BlocProvider.of<FollowerBloc>(context)
        .add(FeatchFollower(follower: widget.userName));
    BlocProvider.of<FollowingBloc>(context)
        .add(FeatchFollowing(following: widget.userName));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(initialIndex: widget.index,
        length: 2,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40.h,
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: Text(
                        "Follower",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      icon: Text(
                        "Following",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SizedBox(
                      width: 60.w,
                      height: 70.h,
                      child: BlocBuilder<FollowerBloc, FollowerState>(
                          builder: (context, state) {
                        if (state is FollowerBlocLoading) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (state is FollowerBlocError) {
                          return SizedBox();
                        }
                        if (state is FollowerBlocLoaded) {
                          id = BlocProvider.of<FollowerBloc>(context)
                              .followerModel;
                          return ListView.separated(
                            itemCount: id.data!.items!.length,
                            itemBuilder: (context, position) {
                              return SizedBox(
                                  child: TextButton(
                                    onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Newprofile(newuser: id.data!.items![position].username.toString()))); },
                                    child: Row(
                                                                    children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, top: 10),
                                        child: CircleAvatar(
                                          radius: 30.r,
                                          backgroundImage: NetworkImage(
                                            id.data!.items![position].profilePicUrl.toString(),
                                          ),
                                        )),
                                    SizedBox(
                                      width: 30.h,
                                    ),
                                    Text(
                                      id.data!.items![position].username.toString(),
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                                                    ],
                                                                  ),
                                  ));
                            },
                            separatorBuilder: (context, position) {
                              return SizedBox(
                                height: 2.h,
                              );
                            },
                          );
                        } else {
                          return SizedBox();
                        }
                      }),
                    ),
                    BlocBuilder<FollowingBloc, FollowingState>(
  builder: (context, state) {
    if(state is FollowingBlocLoading){
      return Center(child: CircularProgressIndicator());
    }
    if(state is FollowingBlocError){
      return SizedBox(child: Text("Error"),);
    }
    if (state is FollowingBlocLoaded){
      following=BlocProvider.of<FollowingBloc>(context).followingModel;
    return ListView.separated(
                      itemCount: following.data!.items!.length,
                      itemBuilder: (context, position) {
                        return SizedBox(
                            child: TextButton(
                              onPressed: () {  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Newprofile(newuser: following.data!.items![position].username.toString())));  },
                              child: Row(
                                                        children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 5),
                                child: CircleAvatar(
                                  radius: 30.r,
                                  backgroundImage: NetworkImage(following.data!.items![position].profilePicUrl.toString()),
                                ),
                              ),
                              SizedBox(
                                width: 30.h,
                              ),
                              Text(
                                following.data!.items![position].username.toString(),
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                                                        ],
                                                      ),
                            ));
                      },
                      separatorBuilder: (context, position) {
                        return SizedBox(
                          height: 2.h,
                        );
                      },
                    );
  }else{return SizedBox();}}
),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
