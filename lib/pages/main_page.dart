import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsc/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.orange,
      //   foregroundColor: Colors.black87,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //   title: Text(
      //     'Скинь цицi',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      // ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/home-1-svgrepo-com.svg'),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/favourite-svgrepo-com.svg'),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/add-ellipse-svgrepo-com.svg'),
              label: 'Add'),
          BottomNavigationBarItem(
              icon:
                  SvgPicture.asset('assets/svg/message-round-svgrepo-com.svg'),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/svg/user-heart-alt-1-svgrepo-com.svg'),
              label: 'User'),
        ],
        //backgroundColor: Colors.orange,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        //type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black87,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(),
  ];
}
