import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  String _selectedDate = DateFormat("yyyy년 MM월 dd일").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: Row(
          children: [
            Text(_selectedDate),
            IconButton(
              onPressed: () => _selectDate(context),
              icon: const Icon(Icons.date_range),
            )
          ],
        ));
  }

  Future _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (selected != null) {
      setState(() {
        _selectedDate = DateFormat("yyyy년 MM월 dd일").format(selected);
      });
    }
  }
}
