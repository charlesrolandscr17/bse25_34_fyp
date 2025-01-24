import 'package:flutter/material.dart';
// import 'package:jobsearch/Screens/Fragments/AlertsScreen.dart';
// import 'package:jobsearch/Screens/Fragments/BookmarkScreen.dart';
// import 'package:jobsearch/Screens/Fragments/ChatScreen.dart';
// import 'package:jobsearch/Screens/Fragments/HomeScreen.dart';
// import 'package:jobsearch/Screens/Fragments/JobsScreen.dart';
// import 'package:jobsearch/Theme.dart';
// import 'package:nb_utils/nb_utils.dart';

// import '../components/HomeDrawerComponent.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int selectedIndex = 0;

  // Widget getFragment() {
  //   if (selectedIndex == 0) {
  //     return const HomeScreen();
  //   } else if (selectedIndex == 1) {
  //     return const AlertsScreen();
  //   } else if (selectedIndex == 2) {
  //     return const JobsScreen();
  //   } else if (selectedIndex == 3) {
  //     return const BookmarkScreen();
  //   } else if (selectedIndex == 4) {
  //     return const ChatScreen();
  //   }
  //   return const HomeScreen();
  // }

  // @override
  // void initState() {
  //   setStatusBarColor(Colors.transparent);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const Text("The Dashboard");
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text(
    //         "Jobs Search",
    //         style: TextStyle(color: Colors.black),
    //       ),
    //       backgroundColor: Colors.transparent,
    //       centerTitle: true,
    //       iconTheme: const IconThemeData(color: Colors.black),
    //       elevation: 0,
    //       actions: const [
    //         Padding(
    //           padding: EdgeInsets.all(10.0),
    //           child: CircleAvatar(
    //             backgroundImage: AssetImage("assets/Images/profile.png"),
    //           ),
    //         ),
    //       ],
    //     ),
    //     drawer: const Drawer(
    //       child: HomeDrawerComponent(),
    //     ),
    //     body: getFragment(),
    //     bottomNavigationBar: Container(
    //       padding: const EdgeInsets.all(15),
    //       decoration: BoxDecoration(
    //         boxShadow: [
    //           BoxShadow(
    //             color: Colors.black.withAlpha(50), //New
    //             blurRadius: 25.0,
    //           )
    //         ],
    //         borderRadius: const BorderRadius.only(
    //             topLeft: Radius.circular(25), topRight: Radius.circular(25)),
    //         color: AppColors.white,
    //       ),
    //       child: BottomNavigationBar(
    //         showSelectedLabels: false,
    //         elevation: 0,
    //         type: BottomNavigationBarType.fixed,
    //         backgroundColor: AppColors.white,
    //         items: [
    //           BottomNavigationBarItem(
    //             icon: Image.asset('assets/Icons/Ic_Home.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.grey)
    //                 .paddingTop(12),
    //             label: '',
    //             activeIcon: Image.asset('assets/Icons/Ic_Home.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.lightgreen)
    //                 .paddingTop(12),
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Image.asset('assets/Icons/Ic_Alert.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.grey)
    //                 .paddingTop(12),
    //             label: '',
    //             activeIcon: Image.asset('assets/Icons/Ic_Alert.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.lightgreen)
    //                 .paddingTop(12),
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Image.asset('assets/Icons/Ic_Bag.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.grey)
    //                 .paddingTop(12),
    //             label: '',
    //             activeIcon: Image.asset('assets/Icons/Ic_Bag.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.lightgreen)
    //                 .paddingTop(12),
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Image.asset('assets/Icons/Ic_Bookmark.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.grey)
    //                 .paddingTop(12),
    //             label: '',
    //             activeIcon: Image.asset('assets/Icons/Ic_Bookmark.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.lightgreen)
    //                 .paddingTop(12),
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Image.asset('assets/Icons/Ic_Chat.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.grey)
    //                 .paddingTop(12),
    //             label: '',
    //             activeIcon: Image.asset('assets/Icons/Ic_Chat.png',
    //                     height: 24.66,
    //                     width: 24.66,
    //                     fit: BoxFit.cover,
    //                     color: AppColors.lightgreen),
    //                 .paddingTop(12),
    //           ),
    //         ],
    //         onTap: (val) {
    //           selectedIndex = val;
    //           setState(() {});
    //         },
    //         currentIndex: selectedIndex,
    //       ),
    //     ),
    //   );
  }
}
