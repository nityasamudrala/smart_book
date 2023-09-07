import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'available_details.dart';

class available extends StatelessWidget {
  const available({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.08,
          backgroundColor: Color(0xff107163),
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Availability',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontFamily: 'Roboto'),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              )),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                height: height * 0.75,
                child:
                    Center(child: Image.asset('assets/images/available.png'))),
            Container(
              child: Text('Slot available for the room you are looking'),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff107163),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => availability()));
                },
                child: Text(
                  'Book',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
