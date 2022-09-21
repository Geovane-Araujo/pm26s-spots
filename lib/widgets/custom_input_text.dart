import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CustomInputText extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final Color backgroundColor;
  final Color foregroundColor;


  CustomInputText({Key? key,
    required this.controller,
    required this.hint,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: foregroundColor,
        ),
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            filled: true,
            labelText: hint,
            fillColor: backgroundColor,
            border: OutlineInputBorder(borderSide: BorderSide(color: backgroundColor))
        ),
      ),
    );
  }
}


