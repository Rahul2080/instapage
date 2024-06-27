import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Follower extends StatefulWidget {
  const Follower({super.key});

  @override
  State<Follower> createState() => _FollowerState();
}

class _FollowerState extends State<Follower> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(body: DefaultTabController(
      length: 2,
      child: Column(children: [ Container(
        width: double.infinity,
        height: 40.h,
        child: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              text: "Follower",
            ),
            Tab(text: "Following",
               ),
          ],
        ),
      ),],),
    ),);
  }
}
