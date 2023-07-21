import 'package:figma_test/widgets/home_grid_view.dart';
import 'package:figma_test/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> date = [
    "*\n26",
    "金\n27",
    "土\n28",
    "日\n29",
    "月\n30",
    "火\n01",
    "水\n02",
  ];

  final List<Color> containercolor = [
    Colors.orange,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.place,
            size: 40,
          ),
          backgroundColor: Colors.white,
          onPressed: () {}),
      body: Column(
        children: [
          const SearchBar(), // Assuming this is a custom widget for the search bar
          Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.amber, Colors.orange])
                    
                    
                    ),
            child: const Center(child: Text("2022年 5月 26日（木）")),
          ),

          SizedBox(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: date.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                       color: containercolor[index % containercolor.length],
                        borderRadius: BorderRadius.circular(10)
                        ),
                    child: Center(
                        child: Text(
                      date[index],
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    )),
                  );
                }),
          ),
          const Expanded(child: HomeGridView()),
        ],
      ),
    );
  }
}
