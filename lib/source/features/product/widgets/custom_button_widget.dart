import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  CustomButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
          onPressed: (){},
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, bottom: 20)),
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Colors.amber,
                    )
                )),
            // padding: MaterialStateProperty.all(EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5))
          ),
          child: Text('$title',style: TextStyle(color: Colors.black),)),
    );
  }
}
