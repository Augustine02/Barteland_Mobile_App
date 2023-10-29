import 'package:barterland_app/source/features/product/widgets/item_reusable_widget.dart';
import 'package:barterland_app/source/features/product/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditItemScreen extends StatelessWidget {
  const EditItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ItemReusableWidget(),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 0, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('Description',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    const Text('In very good condition'),
                    const Text('Details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                    const  Text('Posted by',style: TextStyle(fontWeight: FontWeight.bold),),
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
                    CustomButton(title: 'Edit Item'),
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
