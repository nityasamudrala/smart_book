import 'package:doctor_appointment_ui/available.dart';
import 'package:flutter/material.dart';
import 'available_details.dart';
import 'notavailable.dart';

class Booking extends StatefulWidget {
  Booking({Key key, this.name, this.members, this.type}) : super(key: key);
  String name;
  String members;
  int type;
  @override
  State<StatefulWidget> createState() => Bookingstate();
}

class Bookingstate extends State<Booking> {
  List dateSlots = [
    ['Mon', '21', true],
    ['Tue', '22', false],
    ['Wed', '23', false],
    ['Thu', '24', false],
    ['Fri', '25', false],
    ['Sat', '26', false],
  ];
  List fromTimeSlots = [
    ['9:30 am', true],
    ['10:00 am', false],
    ['10:30 am', false],
    ['11:00 am', false],
    ['11:30 am', false],
    ['11:30 am', false],
    ['12:30 pm', false],
    ['1:00 pm', false],
    ['1:30 pm', false],
    ['2:00 pm', false],
    ['2:30 pm', false],
    ['3:00 pm', false],
    ['3:30 pm', false],
    ['4:00 pm', false],
    ['4:30 pm', false],
  ];
  List toTimeSlots = [
    ['10:00 am', true],
    ['10:30 am', false],
    ['11:00 am', false],
    ['11:30 am', false],
    ['11:30 am', false],
    ['12:30 pm', false],
    ['1:00 pm', false],
    ['1:30 pm', false],
    ['2:00 pm', false],
    ['2:30 pm', false],
    ['3:00 pm', false],
    ['3:30 pm', false],
    ['4:00 pm', false],
    ['4:30 pm', false],
    ['5:00 pm', false],
  ];
  int i;
  void changeDate(int index) {
    for (i = 0; i < dateSlots.length; i++) {
      setState(() {
        dateSlots[i][2] = false;
      });
    }
    dateSlots[index][2] = true;
  }

  void changeFromTime(int index) {
    for (i = 0; i < fromTimeSlots.length; i++) {
      setState(() {
        fromTimeSlots[i][1] = false;
      });
    }
    fromTimeSlots[index][1] = true;
  }

  void changeToTime(int index) {
    for (i = 0; i < toTimeSlots.length; i++) {
      setState(() {
        toTimeSlots[i][1] = false;
      });
    }
    toTimeSlots[index][1] = true;
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff107163),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xff107163),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              '${widget.name}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '${widget.members}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'April 2020',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView.builder(
                itemCount: dateSlots.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: (() {
                      changeDate(index);
                    }),
                    child: Dates(dateSlots[index][0], dateSlots[index][1],
                        dateSlots[index][2]),
                  );
                }),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'From',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 20),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.6, crossAxisCount: 3),
                physics: NeverScrollableScrollPhysics(),
                itemCount: fromTimeSlots.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: (() {
                        changeFromTime(index);
                      }),
                      child: Time(
                          fromTimeSlots[index][0], fromTimeSlots[index][1]));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 30),
              child: Text(
                'To',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.6, crossAxisCount: 3),
                physics: NeverScrollableScrollPhysics(),
                itemCount: toTimeSlots.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: (() {
                        changeToTime(index);
                      }),
                      child:
                          Time(toTimeSlots[index][0], toTimeSlots[index][1]));
                },
              ),
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
                          builder: (context) =>
                              widget.type == 2 ? notavailable() : available()));
                },
                child: Text(
                  'Check availability',
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
        ),
      ),
    );
  }

  Widget Dates(String day, String date, bool isSelected) {
    return isSelected
        ? Container(
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color(0xff107163),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    day,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(7),
                  child: Text(
                    date,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    day,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(7),
                  child: Text(
                    date,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
  }

  Widget Time(String time, bool isSelected) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff107163) : Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: isSelected ? Colors.white : Colors.black,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text(
              time,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
