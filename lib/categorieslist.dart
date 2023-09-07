import 'dart:js';
import 'package:doctor_appointment_ui/seminarhalls-list.dart';
import 'package:flutter/material.dart';
import 'Booking.dart';
import 'Bookingdetails.dart';
import 'classrooms-list.dart';
import 'labs-list.dart';

class CategoriesScreen extends StatelessWidget {
  List _categories = [
    ['Seminar halls', '10 available', 'seminar', context],
    ['Class rooms', '24 available', 'class', context],
    ['Labs', '15 available', 'lab', context],
    ['Auditorium', '1 available', 'audi', context]
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
          'Categories',
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
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: categories(_categories[index][0], _categories[index][1],
                  _categories[index][2], context),
            );
          }),
    );
  }
}

Widget categories(
  String name,
  String capacity,
  String type,
  BuildContext context,
) {
  var size = MediaQuery.of(context).size;
  return GestureDetector(
    onTap: () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => type == 'seminar'
                  ? SeminarHallListScreen()
                  : type == 'class'
                      ? RoomslistScreen()
                      : type == 'lab'
                          ? LabsListScreen()
                          : Booking(
                              name: '$name',
                              members: '$capacity',
                            )),
          ((route) => true));
    },
    child: Container(
      height: 90,
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
