import 'package:flutter/material.dart';

import 'bookingconfirmation.dart';

class availability extends StatelessWidget {
  const availability({Key key}) : super(key: key);

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
                        "21/06/22",
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
                      "From",
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
                        "9:30 am",
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
                      "To",
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
                        "12:30",
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
                      "Room",
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
                        "IT seminar hall",
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
                  TextField(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => bookingConfirmation()));
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
          )
        ],
      ),
    );
  }
}
