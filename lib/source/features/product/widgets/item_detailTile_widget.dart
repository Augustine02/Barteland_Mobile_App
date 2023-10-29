import 'package:flutter/material.dart';

class ItemDetailTile extends StatelessWidget {

  final String? taskTitle;
  Color color;

  ItemDetailTile({this.taskTitle, this.color = Colors.black12});


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
          trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black)

      ),
    );
  }
}