import 'package:figma_test/Screens/edit_profile_page.dart';
import 'package:figma_test/Screens/home_Screen.dart';
import 'package:figma_test/Screens/stamp_detials.dart';
import 'package:flutter/material.dart';


class NavbarRoot extends StatefulWidget {
  const NavbarRoot({super.key});

  @override
  State<NavbarRoot> createState() => _NavbarRootState();
}

class _NavbarRootState extends State<NavbarRoot> {

int _selectindex= 0;
final screens =[
  HomeScreen(),
  StampDetails(),
  EditProfilePage(),
  Container()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
     
        onPressed: (){},
      child: Icon(Icons.add,color: Colors.white,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white12,
      body: screens[_selectindex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:Colors.amber,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectindex,
          onTap: (index){
            setState(() {
              _selectindex=index;
            });
          },
          items:const  [
            BottomNavigationBarItem(icon: Icon(Icons.search,),label:"Searcg" ),
             BottomNavigationBarItem(icon: Icon(Icons.wallet,),label:"Massages" ),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded,),label:"Massages" ),
               BottomNavigationBarItem(icon: Icon(Icons.person,),label:"Setting" )
          ],
          ),
          
      ),
    );
  }
}