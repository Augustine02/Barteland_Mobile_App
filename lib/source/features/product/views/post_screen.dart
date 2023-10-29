import 'package:flutter/material.dart';
import 'package:barterland_app/source/features/product/widgets/item_detailTile_widget.dart';
import 'package:barterland_app/source/features/product/widgets/custom_button_widget.dart';
import 'package:barterland_app/source/features/product/widgets/post_textField_widget.dart';
import 'package:get/get.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.only(left: 20.0, right:20.0, top: 40, bottom: 20),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.close),
                        SizedBox(width: MediaQuery.of(context).size.width/3,),
                        Text('Add Item', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(top: 50,bottom: 30),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                            child: Icon(Icons.camera_alt_outlined)),
                      ],
                    ),
                    ItemDetailTile(taskTitle: 'Category',),
                    ItemDetailTile(taskTitle: 'Brand name',),
                    PostTextField(title: "Item's name*"),
                    PostTextField(title: "Description*", maxlines: 3),
                    ItemDetailTile(taskTitle: 'Exchange for',),
                  ],
                ),
                CustomButton(title: 'Post',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


