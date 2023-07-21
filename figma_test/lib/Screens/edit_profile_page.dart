import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/drop_downbuttun.dart';
import '../widgets/small_container.dart';

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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("店舗名*"),
            ),
            const Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Mer キッチン", border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("代表担当者名*"),
            ),
            const Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "林田　絵梨花", border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("店舗電話番号*"),
            ),
            const Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "123 - 4567 8910", border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("店舗住所*"),
            ),
            const Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "大分県豊後高田市払田791-13", border: OutlineInputBorder()),
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/googlmap.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("店舗外観*（最大3枚まで）"),
            ),
           const SmallContainer(
              containerImage: Image(image: AssetImage("image/coffeeshop.jpeg")
              ),
            ),
           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("店舗内観*（1枚〜3枚ずつ追加してください）"),

            ),
            const SmallContainer(
              containerImage: Image(image: AssetImage("image/roomimage.jpeg")
              ),
            ),
         const    Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("料理写真*（1枚〜3枚ずつ追加してください）"),
            ),
             const SmallContainer(
              containerImage: Image(image: AssetImage("image/food.jpeg"),
              ),
            ),
           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("メニュー写真*（1枚〜3枚ずつ追加してください）"),
            ),
              const SmallContainer(
              containerImage: Image(image: AssetImage("image/notepad.jpeg"),
              ),
            ),
            const   Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("営業時間*"),
              ),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: DropdownButtonWidget(),
                       ),
                      const  Text("~"),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: DropdownButtonWidget(),
                       ),
                     const   SizedBox(height: 20,),

                       

              ],
            ),
              
            const   Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text("ランチ時間**"),
              ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: DropdownButtonWidget(),
                       ),
                       Text("~"),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: DropdownButtonWidget(),
                       ),
                       SizedBox(height: 20,),

                       

              ],
            ),
  const Padding(
    padding:  EdgeInsets.all(8.0),
    child: Text("キャッチコピー*"),
  ),
           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: "美味しい！リーズナブルなオムライスランチ！",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ),

             const Padding(
    padding:  EdgeInsets.all(8.0),
    child: Text("座席数*"),
  ),
           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: "40席",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ),

           const  SizedBox(height: 10,),

            SmallContainer(containerImage: Image.asset("image/drinks.jpeg"),),
           const  SizedBox(height: 10,),


           const  Padding(padding: EdgeInsets.all(8),
            child: Text("来店プレゼント名*"),),
              const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: "いちごクリームアイスクリーム, ジュース",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){},
              color: Colors.orange,
              
              child: Center(child: Text("編集を保存")),),
            )
          ],
        ),
      ),
    );
  }
}
