import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
                        backgroundColor: Colors.black12,
                        radius: 25,
                        child: Center(
                            child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                      )),
                  const Text(
                    "店舗プロフィール編集",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 12,
                        child: Icon(
                          Icons.notification_add,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
          const   SizedBox(height: 10,),
          const  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("店舗名*"),
            ),
           const  Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                   hintText: "Mer キッチン",
                     border: OutlineInputBorder(
                      
                     )
                ),
              ),
            ),
            const  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("代表担当者名*"),
            ),
           const  Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                   hintText: "林田　絵梨花",
                     border: OutlineInputBorder(
                      
                     )
                ),
              ),
            ),const  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("店舗電話番号*"),
            ),
           const  Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                   hintText: "123 - 4567 8910",
                     border: OutlineInputBorder(
                      
                     )
                ),
              ),
            ),
            const  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("店舗住所*"),
            ),
           const  Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                   hintText: "大分県豊後高田市払田791-13",
                     border: OutlineInputBorder(
                      
                     )
                ),
              ),
            ),
              
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("image/googlmap.jpg"),
              fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 10,),
            Text("店舗外観*（最大3枚まで）"),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.amber
              ),
            )
          
          ],
        ),
      ),
    );
  }
}
