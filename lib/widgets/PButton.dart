import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/PMargin.dart';

class PButton extends StatefulWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String router;
  final String hint;

  const PButton({
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.router = "",
     this.hint = "",
    Key? key
  }) : super(key: key);



  @override
  State<PButton> createState() => _PButtonState();
}

class _PButtonState extends State<PButton> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: 10,right: 10),
      width: MediaQuery.of(context).size.width/1,
      height: 50,
      padding: EdgeInsets.only(top:4, bottom: 4),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          foregroundColor: widget.foregroundColor
        ),
        onPressed: (){
          Navigator.pushNamed(context, '/' + widget.router);
        },
        child: Text(widget.hint),
      )
    );
  }
}
