import 'package:flutter/material.dart';

class DetailTileWithoutIcon extends StatelessWidget {

  final String? taskTitle;
  Color color;

  DetailTileWithoutIcon({this.taskTitle, this.color = Colors.black12});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: ListTile(
          tileColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(
            '$taskTitle*',
            style: TextStyle(
              // fontWeight: FontWeight.bold
            ),
          ),
      ),
    );
  }
}