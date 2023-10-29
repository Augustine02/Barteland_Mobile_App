import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:barterland_app/source/features/product/models/item_card.dart';

class ItemController extends GetxController{
  // final name = 'Ruize'.obs;
   List <ItemCard> itemStore = [
    ItemCard(
        title: 'Apple Iphone 11 128GB',
        location: 'Lagos, Ikeja 6.9km',
        imageLink: 'assets/images/phone.png',
    ),
    ItemCard(
      title: 'Apple Iphone 11 128GB',
      location: 'Lagos, Ikeja 6.9km',
      imageLink: 'assets/images/phone.png',
    ),
    ItemCard(
      title: 'Apple Iphone 11 128GB',
      location: 'Lagos, Ikeja 6.9km',
      imageLink: 'assets/images/phone.png',
    )
  ].obs;
}