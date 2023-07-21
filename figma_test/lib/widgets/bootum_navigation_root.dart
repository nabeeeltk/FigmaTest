import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/chat_page.dart';
import '../Screens/edit_profile_page.dart';
import '../Screens/home_Screen.dart';
import '../Screens/stamp_detials.dart';


class NavbarRoot extends StatelessWidget {
  final List<Widget> screens = [
  HomeScreen(),
  const StampDetails(),
  const  ChatScreen(),
  const  EditProfilePage(),
  ];

  final RxInt selectedIndex = 0.obs; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Container(
          height: 40,
          width: 40,
          decoration:const  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("image/scanericon.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white12,
      body: Obx(() => screens[selectedIndex.value]),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: selectedIndex.value,
          onTap: (index) {
            selectedIndex.value = index; 
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "さがす",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.badge),
              label: "お仕事",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: "チャット",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "マイページ",
            ),
          ],
        ),
      ),
    );
  }
}
