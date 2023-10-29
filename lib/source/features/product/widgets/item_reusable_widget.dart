import 'package:barterland_app/source/features/product/controllers/item_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemReusableWidget extends GetView<ItemController> {
  final Widget? LikeIcon;
  final bool needLikeIcon;
  ItemReusableWidget({this.LikeIcon, this.needLikeIcon = false}) ;

  @override
  Widget build(BuildContext context) {
    Get.put(ItemController());
    return Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            // width: 90,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.all(Radius.circular(10.0), ),
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage('assets/images/phone.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 50,bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        // margin: EdgeInsets.only(top: 50,bottom: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Icon(Icons.arrow_back_ios_new_outlined, size: 20,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                        Container(
                          padding: EdgeInsets.all(8),
                          // margin: EdgeInsets.only(top: 50,bottom: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Icon(Icons.file_download_outlined, size: 20,),),
                        SizedBox(width:10),
                        Container(
                          padding: EdgeInsets.all(8),
                          // margin: EdgeInsets.only(top: 50,bottom: 30),
                          decoration: BoxDecoration(
                              color: needLikeIcon ? Colors.white:null,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: LikeIcon),
                        ]
                      )
                    ],
                  ),
                ),
                Container(padding: EdgeInsets.all(9),
                  color: Colors.black.withOpacity(0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text('1/2',style: TextStyle(color: Colors.white),),
                    ],
                  ),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(
                      controller.itemStore[0].title.toString(),
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                      ),

                    )),
                    // Text('Apple Iphone 11 128GB', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                    Icon(Icons.remove_red_eye_outlined, size: 20,)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, size: 20, color: Colors.orange),
                      Obx(() => Text(
                        controller.itemStore[0].location.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                        ),

                      )),
                    ],
                  ),
                  Text('14', style: TextStyle(fontSize: 12),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
