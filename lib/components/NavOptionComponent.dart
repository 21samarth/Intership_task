import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class Navoptioncomponent extends StatefulWidget {
  String title,selectedProperty,option1,option2,option3,option4;
   Navoptioncomponent({super.key,required this.title,required this.selectedProperty,required this.option1,required this.option2,required this.option3,required this.option4});

  @override
  State<Navoptioncomponent> createState() => _NavoptioncomponentState();
}

class _NavoptioncomponentState extends State<Navoptioncomponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
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
              ],
              child: Icon(Icons.expand_more_rounded,color: Colors.white,size: 20,)

          ),

        ],
      ),
    );
  }
}
