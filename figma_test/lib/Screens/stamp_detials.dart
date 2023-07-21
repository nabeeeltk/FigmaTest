import 'package:figma_test/widgets/stamp_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StampDetails extends StatelessWidget {
  const StampDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 163, 243),
      body: SingleChildScrollView(
        child: Column(
          children: [
          const   SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 114, 129, 238),
                        radius: 25,
                        child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                      )),
                const   Text("スタンプカード詳細",style: TextStyle(fontSize:20,color: Colors.white,
                fontWeight: FontWeight.bold ),),
                  InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 151, 163, 243),
                        radius: 12,
                        child: Icon(
                          Icons.minimize,
                          size: 15,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Mer キッチン",style: TextStyle(fontSize:15,color: Colors.white,
                fontWeight: FontWeight.bold )), Text("現在の獲得数 30",style: TextStyle(fontSize:15,color: Colors.white,
                fontWeight: FontWeight.bold ))],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 20, left: 15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Stack(
                children: [
                 
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                    SizedBox(
                      height: 25,
                    ),
                    StampContainer(),
                     SizedBox(height:20 ,),
                     Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text("2 / 2枚目"),
                        )],
                     ),
             Text("スタンプ獲得履歴"),

             Expanded(
              child: ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                 separatorBuilder:(BuildContext context, index) {
                   return Divider(
                    height: 1,
                    color: Colors.grey,

                   );
                 } ,
                itemBuilder: (BuildContext context, index) {
                   return ListTile(
                    subtitle: Text("スタンプを獲得しました。"),
                    title: Text("2021 / 11 / 18"),
                    
                    
                   );
                }
                ),
              )
              
             

                    // title:Text("スタンプを獲得しました。") ,
                    // subtitle: Text("2021 / 11 / 18"),
                    
                  
                   
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
