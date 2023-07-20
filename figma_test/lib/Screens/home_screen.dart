import 'package:figma_test/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBar(), // Assuming this is a custom widget for the search bar
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.amber,
            child: Center(child: Text("...............")),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Change this to desired number of columns
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 3),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('image/doctor3.jpg'),
                        fit:BoxFit.cover
                        
                        )
                       ),
                       
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      )
                     
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
