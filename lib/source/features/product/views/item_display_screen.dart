import 'package:flutter/material.dart';

class ItemDisplayScreen extends StatelessWidget {
  const ItemDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
              padding: EdgeInsets.only(left:15,right:15,top:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                      padding: EdgeInsets.all(8),
                      // margin: EdgeInsets.only(top: 50,bottom: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 20,),),
                  Text('1/2',style:TextStyle(color:Colors.white))
                ]
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/5,),
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              // width: 90,
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10.0), ),
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage('assets/images/phone.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}
