import 'package:flutter/material.dart';


class StampContainer extends StatelessWidget {
  const StampContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
    
      child: PageView.builder(
        itemCount: 3,
        controller: PageController(viewportFraction: 0.7),
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: double.infinity,
            margin:const  EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:const  DecorationImage(
                    image: AssetImage("image/yellowstar.jpg"), fit: BoxFit.cover)),
          );
        
        },
      ),
    );
  }
}
