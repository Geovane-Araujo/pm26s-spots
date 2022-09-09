import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PTextField extends StatefulWidget {
  const PTextField({
     required this.textEditingController,
    Key? key
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  State<PTextField> createState() => _PTextFieldState();
}

class _PTextFieldState extends State<PTextField> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width/1,
      height: 70,
      padding: EdgeInsets.only(top:4, left:16, right: 16, bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          )
      ),
      child: TextField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
        ),
      ),
    );
  }
}
