import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_hotels/colors.dart';

class CalendarRange extends StatefulWidget {
  const CalendarRange({Key? key}) : super(key: key);

  @override
  State<CalendarRange> createState() => _CalendarRangeState();
}

class _CalendarRangeState extends State<CalendarRange> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime? _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  // Using a `LinkedHashSet` is recommended due to equality comparison override
  final Set<DateTime> _selectedDays = {};

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;
      // Update values in a Set
      if (_selectedDays.contains(selectedDay)) {
        _selectedDays.remove(selectedDay);
      } else {
        _selectedDays.add(selectedDay);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.grey[10],
      child: TableCalendar(
        focusedDay: DateTime.utc(2022, 12, 12),
        firstDay: DateTime.utc(2022, 12, 1),
        lastDay: DateTime(2022, 12, 31),
        rangeStartDay: _rangeStart,
        rangeEndDay: _rangeEnd,
        calendarFormat: _calendarFormat,
        startingDayOfWeek: StartingDayOfWeek.monday,
        rangeSelectionMode: _rangeSelectionMode,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          formatButtonDecoration: BoxDecoration(
            color: d_green,
            borderRadius: BorderRadius.circular(22),
          ),
          formatButtonShowsNext: false,
          formatButtonTextStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        calendarStyle: const CalendarStyle(
          rangeHighlightColor: d_green,
          rangeStartDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: d_green,
          ),
          rangeEndDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: d_green,
          ),
          selectedTextStyle: TextStyle(color: Colors.white),
        ),
        selectedDayPredicate: (day) {
          return _selectedDays.contains(day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
              _rangeStart = null; // Important to clean those
              _rangeEnd = null;
              _rangeSelectionMode = RangeSelectionMode.toggledOff;
            });
          }
        },
        onRangeSelected: (start, end, focusedDay) {
          setState(() {
            _selectedDay = null;
            _focusedDay = focusedDay;
            _rangeStart = start;
            _rangeEnd = end;
            _rangeSelectionMode = RangeSelectionMode.toggledOn;
          });
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            setState(() {
              _calendarFormat = format;
            });
          }
        },
      ),
    );
  }
}
