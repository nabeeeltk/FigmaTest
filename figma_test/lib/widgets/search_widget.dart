import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          
          padding:const  EdgeInsets.symmetric(horizontal: 16,vertical: 50.0),
            child: Row(children: [
             Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)

                    ),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search)
                  ),
                )),
                IconButton(onPressed: (){}, icon: Icon(Icons.filter_1_outlined)),
                 IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),

            ],
            ),
            
         );
        
  }
}