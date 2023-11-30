import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:our_sistahood_app/view/dashboard/mycourses_screen.dart';
import 'package:our_sistahood_app/view/dashboard/profile_screen.dart';
import 'package:our_sistahood_app/view/dashboard/searchcourse_screen.dart';
import 'package:our_sistahood_app/view/dashboard/wishlist_screen.dart';
import 'package:our_sistahood_app/view/Homescreen/homescreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Widget> tabItems = [
    const HomeScreen(),
    const SearchCourseScreen(),
    const Mycourses_Screen(),
    const Wishlist_Screen(),
    const ProfileScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabItems[_selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: FlashyTabBar(
            backgroundColor: const Color(0xff3B2A27),
            animationCurve: Curves.easeIn,
            animationDuration: const Duration(milliseconds: 500),
            selectedIndex: _selectedIndex,
            iconSize: 30,
            showElevation: false, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() {
              _selectedIndex = index;
            }),
            items: [
              FlashyTabBarItem(
                inactiveColor: Colors.white,
                activeColor: const Color(0xffE49136),
                icon: const Icon(Icons.home),
                title: Text('Home', style: TextStyle(fontSize: 11.sp)),
              ),
              FlashyTabBarItem(
                inactiveColor: const Color(0xffE49136),
                activeColor: const Color(0xffE49136),
                icon: Image.asset(
                  'assets/images/9110864_search_icon@3x.png',
                  height: 20.sp,
                ),
                title: Text(
                  'Search',
                  style: TextStyle(fontSize: 11.sp),
                ),
              ),
              FlashyTabBarItem(
                inactiveColor: const Color(0xffE49136),
                activeColor: const Color(0xffE49136),
                icon: Image.asset(
                  'assets/images/Layer 2@3x.png',
                  height: 20.sp,
                ),
                title: Text('My Courses', style: TextStyle(fontSize: 11.sp)),
              ),
              FlashyTabBarItem(
                inactiveColor: const Color(0xffE49136),
                activeColor: const Color(0xffE49136),
                icon: Image.asset(
                  'assets/images/211755_heart_icon@x.png',
                  height: 20.sp,
                ),
                title: Text('Wishlist', style: TextStyle(fontSize: 11.sp)),
              ),
              FlashyTabBarItem(
                inactiveColor: const Color(0xffE49136),
                activeColor: const Color(0xffE49136),
                icon: Image.asset(
                  'assets/images/icons@x.png',
                  height: 20.sp,
                ),
                title: Text('Profile', style: TextStyle(fontSize: 11.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
