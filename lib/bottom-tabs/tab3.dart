import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: mediaQuery.height * 0.02),
            Text(
              "Schedules Page",
              style: TextStyle(decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.lightBlue,
                decorationThickness: 3,
                fontFamily: 'Raleway',
                fontSize: 22,),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            scheduleContainer("Problem Submission Deadline", "October 10, 2021",
                mediaQuery.height * 0.05),
            SizedBox(height: mediaQuery.height * 0.05),
            scheduleContainer("Acceptance Notification", "November 12, 2021",
                mediaQuery.height * 0.05),
            SizedBox(height: mediaQuery.height * 0.05),
            scheduleContainer("Camera Ready Paper Submission",
                "December 20, 2021", mediaQuery.height * 0.05)
          ],
        ),
      ),
    );
  }

  Widget scheduleContainer(String title, String date, double height) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height),
            Text(
              date,
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
