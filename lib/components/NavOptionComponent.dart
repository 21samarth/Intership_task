import 'package:flutter/material.dart';

class Navoptioncomponent extends StatefulWidget {
  String title,item1,item2,item3,item4;
   Navoptioncomponent({super.key,required this.title,required this.item1,required this.item2,required this.item3,required this.item4});

  @override
  State<Navoptioncomponent> createState() => _NavoptioncomponentState();
}

class _NavoptioncomponentState extends State<Navoptioncomponent> {
  String selectedProperty = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
          PopupMenuButton<String>(
              elevation: 100.0,position: PopupMenuPosition.over,
              onSelected: (value) {
                setState(() {
                  selectedProperty = value;
                });
              },
              itemBuilder: (context) => [
                PopupMenuItem(value: widget.item1, child: Text(widget.item1)),
                PopupMenuItem(value: widget.item2,child: Text(widget.item2)),
                PopupMenuItem(value: widget.item3, child: Text(widget.item3)),
                PopupMenuItem(value: widget.item4, child: Text(widget.item4)),
              ],
              child: Icon(Icons.expand_more_rounded,color: Colors.white,size: 20,)

          ),

        ],
      ),
    );;
  }
}
