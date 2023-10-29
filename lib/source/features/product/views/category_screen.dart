import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:barterland_app/source/features/product/controllers/category_controller.dart';
import 'package:barterland_app/source/features/product/widgets/item_detailTile_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends GetView<CategoryController> {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 20.0, right:20.0, top: 40, bottom: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.close),
                    SizedBox(width: MediaQuery.of(context).size.width/4,),
                    Text('Choose category', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemBuilder: (context,index) {
                      return ItemDetailTile(
                          taskTitle: controller.category[index],
                          color: Colors.white,
                      );
                    },
                    itemCount:controller.category.length,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
