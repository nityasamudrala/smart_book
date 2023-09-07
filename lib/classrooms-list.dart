import 'package:flutter/material.dart';

import 'Booking.dart';
import 'Bookingdetails.dart';

class RoomslistScreen extends StatelessWidget {
  List _Roomslist = [
    ['A Block', '60 members'],
    ['V Block', '60 members'],
    ['B Block', '60 members'],
    ['M Block', '60 members'],
    ['C Block', '60 members']
  ];
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
          'Class Rooms',
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
      body: ListView.builder(
          itemCount: _Roomslist.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Roomslist(
                  _Roomslist[index][0], _Roomslist[index][1], context),
            );
          }),
    );
  }
}

Widget Roomslist(String name, String capacity, BuildContext context) {
  var size = MediaQuery.of(context).size;
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Booking(
                    members: '$capacity',
                    name: '$name',
                    type: 2,

                  )));
    },
    child: Container(
      height: 80,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Color(0xff363636),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    capacity,
                    style: TextStyle(
                      color: Color(0xff363636),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
