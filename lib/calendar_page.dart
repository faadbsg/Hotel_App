import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_hotels/calendar_range.dart';
import 'package:ui_hotels/my_app_bar.dart';
import 'package:ui_hotels/period_section.dart';
import 'package:ui_hotels/validate_booking_section.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const PeriodSection(),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[350],
            ),
            const CalendarRange(),
            const ValidateBookingSection(),
          ],
        ),
      ),
    );
  }
}
