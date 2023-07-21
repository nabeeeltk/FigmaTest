import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final Image containerImage;
  

  const SmallContainer({ required this.containerImage, })
    ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                width: 80,
                height: 100,
                decoration: BoxDecoration(
                image: DecorationImage(image:containerImage.image,fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)
                
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const  [
                    Icon(
                      Icons.cancel,
                      color: Colors.grey,
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
