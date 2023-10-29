import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black54,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(left:15,right:15,top:30,bottom: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Icon(Icons.close,color: Colors.white,),
                    Icon(Icons.flash_off_outlined,color: Colors.white,)
                  ]
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
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
            Container(
              padding: EdgeInsets.only(left:15,right:15,top:30,bottom: 15),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Icon(Icons.flip_camera_ios_outlined,color: Colors.white,),
                    // Icon(Icons.camera,color: Colors.white,),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Icon(Icons.circle, color: Colors.white,size: 75,),
                        CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(radius: 26,backgroundColor: Colors.amber,))
                      ],
                    ),
                    Icon(Icons.photo_library,color: Colors.white,)
                  ]
              ),
            ),
          ],
        )
      ),
    );
  }
}
