import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final Icon cicon;
  final Color? cColor;
  final Text? text;
  const CustomContainer({Key? key,required this.cicon, this.cColor, this.text}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return   ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Container(
        width: 100,
        height:40,
        color: widget.cColor,
        child:Row(
          children: [
            SizedBox(width: 5,),
            Icon(widget.cicon as IconData?,size: 25,color:Colors.white),
            SizedBox(width: 5),
            Text(widget.text.toString(),style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),
          ],
        ),
      ),
    );
  }
}
