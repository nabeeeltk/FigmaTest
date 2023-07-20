import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StampContainer extends StatelessWidget {
  const StampContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
    
      child: PageView.builder(
        itemCount: 3,
        controller: PageController(viewportFraction: 0.7),
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("image/doctor3.jpg"), fit: BoxFit.cover)),
          );
        },
      ),
    );
  }
}
