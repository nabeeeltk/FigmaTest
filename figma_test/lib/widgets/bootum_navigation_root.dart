import 'package:figma_test/Screens/home_Screen.dart';
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
  Container(),
  Container(),
  Container()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            BottomNavigationBarItem(icon: Icon(Icons.home,),label:"Home" ),
             BottomNavigationBarItem(icon: Icon(Icons.wallet,),label:"Massages" ),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded,),label:"Schadule" ),
               BottomNavigationBarItem(icon: Icon(Icons.person,),label:"Setting" )
          ],
          ),
          
      ),
    );
  }
}