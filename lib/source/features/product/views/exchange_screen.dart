import 'package:barterland_app/source/features/product/widgets/item_reusable_widget.dart';
import 'package:barterland_app/source/features/product/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangeScreen extends StatelessWidget {
  const ExchangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ItemReusableWidget(LikeIcon: Icon(Icons.favorite_border_outlined, size: 20, ),needLikeIcon: true,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, bottom: 20)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(
                                  color: Colors.orange,
                                )
                              )),
                          // padding: MaterialStateProperty.all(EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5))
                        ),
                        child: const Text('Contact poster',style: TextStyle(color: Colors.black),)),
                    const Text('Description',style: TextStyle(fontWeight: FontWeight.bold),),
                    const Text('In very good condition'),
                    const Text('Details',style: TextStyle(fontWeight: FontWeight.bold),),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Added on',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('04-09-2022')
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Exchange for',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('Mobile devices')
                      ],
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        // border: Border(left: BorderSide(width: 50.0, color: Colors.white, style: BorderStyle.solid)),
                        //   image: DecorationImage(
                        //     image: AssetImage('images/Jellof_rice.jpg'),
                        //     fit: BoxFit.cover,
                        //   ),
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                   const  Text('Posted by'),
                    const Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jane Daniel',style: TextStyle(fontSize: 16),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('4.8 ',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                Icon(Icons.star,color: Colors.orange,size: 10,),
                                SizedBox(width: 4),
                                Icon(Icons.circle,size: 5,),
                                Text(' 2 reviews',style: TextStyle(fontSize: 10)),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    CustomButton(title: 'Make an exchange'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );


  }
}
