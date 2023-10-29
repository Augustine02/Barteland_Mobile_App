import 'package:flutter/material.dart';

class PostTextField extends StatelessWidget {
  String? title;
  int? maxlines;
  PostTextField({this.title, this.maxlines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Expanded(
        child: TextField(
          maxLines: maxlines,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)
              ),
              contentPadding:EdgeInsets.only(left:20, bottom:60, right:20),
              filled: true,
              fillColor: Colors.black12,
              hintText: title,
              hintStyle: TextStyle(
                color: Colors.black,
              )
          ),
        ),
      ),
    );
  }
}