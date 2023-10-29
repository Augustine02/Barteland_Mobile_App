import 'package:flutter/material.dart';
import 'package:barterland_app/source/features/product/controllers/item_detail_controller.dart';
import 'package:barterland_app/source/features/product/widgets/detailTile_withoutIcon_widget.dart';
import 'package:get/get.dart';

class ItemDetailScreen extends GetView<ItemDetailController> {
  const ItemDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemDetailController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 20.0, right:20.0, top: 40, bottom: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.close),
                    SizedBox(width: MediaQuery.of(context).size.width/4,),
                    Text('Phone & Accessories', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context,index) {
                    return DetailTileWithoutIcon(
                      taskTitle: controller.items[index],
                      color: Colors.white,
                    );
                  },
                  itemCount:controller.items.length,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
