import 'package:flutter/material.dart';

class Bookingdetails extends StatelessWidget {
  Bookingdetails({
    Key key,
    this.booked_by,
    this.date,
    this.location,
    this.purpose,
    this.time,
  }) : super(key: key);
  String date;
  String time;
  String location;
  String booked_by;
  String purpose;

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
          'Booking details',
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
      body: ListView(
        children: [
          Center(
            child: SizedBox(
              width: width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Location",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "$location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Date",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "$date",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Time",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "$time",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Booked by",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "$booked_by",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Purpose",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "$purpose",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
