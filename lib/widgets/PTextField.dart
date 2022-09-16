import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PTextField extends StatefulWidget {
  const PTextField({
     required this.textEditingController,
     this.hint = "",
    Key? key
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hint;

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
      margin: EdgeInsets.only(top: 15,left: 10,right: 10),
      width: MediaQuery.of(context).size.width/1,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26)
      ),
      child: TextField(
        // style: TextStyle(
        //   fontSize: 14
        // ) ,

        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: widget.hint,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
          )
        ),
      ),
    );
  }
}
