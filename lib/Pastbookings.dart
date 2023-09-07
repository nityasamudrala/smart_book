import 'package:flutter/material.dart';
import 'Homepage.dart';

class PastBookingsScreen extends StatelessWidget {
  List _pastBookings = [
    ['Event A', 'CSE seminar hall', '6/6/22', '1:30 - 2:30'],
    ['Event B', 'IT seminar hall', '4/6/22', '10:30 - 2:30'],
    ['Event C', 'Auditorium', '3/6/22', '09:30 - 12:30'],
    ['Event D', 'Room A-416', '3/6/22', '09:30 - 12:30'],
    ['Event E', 'IT lab-2', '3/6/22', '09:30 - 12:30'],
    ['Event F', 'CSE lab-3', '3/6/22', '09:30 - 12:30']
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
          'Past bookings',
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
          itemCount: _pastBookings.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: HomePageState.Pastbookings(
                  _pastBookings[index][0],
                  _pastBookings[index][1],
                  _pastBookings[index][2],
                  '',
                  _pastBookings[index][3],
                  '',
                  context),
            );
          }),
    );
  }
}
