import 'dart:math';

import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {

  final String name, url, author, faculty, publisher, cost, timeStamp;

  BookItem({this.name, this.url, this.faculty, this.publisher, this.author, this.cost, this.timeStamp});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 25,) ,
                    child: Text(
                      cost,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.grey[900]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end  ,
                children: [
                  Text(name, style: TextStyle(color: Colors.black, fontSize: 15),),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(timeStamp, style: TextStyle(color: Colors.grey[900]),),
                      SizedBox(width: 10,),
                      Icon(Icons.calendar_today, color: Colors.grey[900], size: 15,),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(publisher, style: TextStyle(color: Colors.grey[900]),),
                      SizedBox(width: 10,),
                      Icon(Icons.menu, color: Colors.grey[900], size: 15,),
                    ],
                  ),                  SizedBox(
                    height: 5,
                  ),
                  Text(author, style: TextStyle(color: Colors.grey[800]),),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: FadeInImage(
                height: 120,
                placeholder: AssetImage('assets/images/book-1.png'),
                image: NetworkImage(
                    'https://images-na.ssl-images-amazon.com/images/I/31o6m4snULL._SX346_BO1,204,203,200_.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
