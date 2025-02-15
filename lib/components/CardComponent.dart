import 'package:flutter/material.dart';

class Cardcomponent extends StatefulWidget {
  const Cardcomponent({super.key});

  @override
  State<Cardcomponent> createState() => _CardcomponentState();
}

class _CardcomponentState extends State<Cardcomponent> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(

      width: MediaQuery.of(context).size.width*0.3,
      height: MediaQuery.of(context).size.height,
      child: Card(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/inter.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'FEATURED',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'FOR RENT',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$11,000/mo',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'New Apartment Nice View',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '8100 S Ashland Ave, Chicago, IL 60620, USA',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.bed, size: 20, color: Colors.grey[700]),
                      SizedBox(width: 5),
                      Text('3'),
                      SizedBox(width: 10),
                      Icon(Icons.bathtub, size: 20, color: Colors.grey[700]),
                      SizedBox(width: 5),
                      Text('1'),
                      SizedBox(width: 10),
                      Icon(Icons.directions_car, size: 20, color: Colors.grey[700]),
                      SizedBox(width: 5),
                      Text('1'),
                      SizedBox(width: 10),
                      Icon(Icons.square_foot, size: 20, color: Colors.grey[700]),
                      SizedBox(width: 5),
                      Text('1789 Sq Ft'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 12, backgroundColor: Colors.grey[400]),
                      SizedBox(width: 5),
                      Text('Samuel Palmer'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16, color: Colors.grey[700]),
                      SizedBox(width: 5),
                      Text('5 years ago'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
