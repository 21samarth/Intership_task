import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class Fromdropdowncomponent extends StatefulWidget {
  String title,selectedProperty,option1,option2,option3,option4,option5;
  Fromdropdowncomponent({super.key,required this.title,required this.selectedProperty,required this.option1,required this.option2,required this.option3,required this.option4,required this.option5});

  @override
  State<Fromdropdowncomponent> createState() => _FromdropdowncomponentState();
}

class _FromdropdowncomponentState extends State<Fromdropdowncomponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(left: 10.0,right: 20.0,top: 5.0,bottom: 5.0),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.withOpacity(0.5))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

          PopupMenuButton<String>(
              elevation: 100.0,position: PopupMenuPosition.over,
              onSelected: (value) {
                setState(() {
                  widget.selectedProperty = value;
                });
              },
              itemBuilder: (context) => [
                PopupMenuItem(value: widget.option1, child: AutoSizeText(widget.option1)),
                PopupMenuItem(value: widget.option2, child: AutoSizeText(widget.option2)),
                PopupMenuItem(value: widget.option3, child: AutoSizeText(widget.option3)),
                PopupMenuItem(value: widget.option4, child: AutoSizeText(widget.option4)),
                PopupMenuItem(value: widget.option5, child: AutoSizeText(widget.option5)),
              ],
              child: Icon(Icons.expand_more_rounded,color: Colors.black,size: 20,)

          ),
          ],
        ),
      ),
    );
  }
}
