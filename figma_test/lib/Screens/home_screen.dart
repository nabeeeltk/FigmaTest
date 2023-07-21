
import 'package:figma_test/widgets/home_grid_view.dart';
import 'package:figma_test/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.place,size:40 ,),
        backgroundColor: Colors.white,
        onPressed: (){}),
      body: Column(
        children: [
         const  SearchBar(), // Assuming this is a custom widget for the search bar
          Container(
            height: 40,
            width: double.infinity,
            decoration:const  BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.amber,
                Colors.orange
              ])
            ),
            child: const Center(child: Text("2022年 5月 26日（木）")
            ),
          ),
         const  SizedBox(height: 20,),
         const Expanded(child: 
             HomeGridView()
         ),
        ],
      ),
    );
  }
}
