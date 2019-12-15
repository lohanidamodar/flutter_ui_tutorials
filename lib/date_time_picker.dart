import 'package:flutter/material.dart';

class DateTimePickerPage extends StatefulWidget {
  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  DateTime pickedDate;
  TimeOfDay time;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text("Date: ${pickedDate.year}, ${pickedDate.month}, ${pickedDate.day}"),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickDate,
            ),
            ListTile(
              title: Text("Time: ${time.hour}:${time.minute}"),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickTime,
            ),
          ],
        ),
      ),
    );
  }
  _pickDate() async {
   DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
      initialDate: pickedDate,
    );

    if(date != null)
      setState(() {
        pickedDate = date;
      });

  }
  _pickTime() async {
   TimeOfDay t = await showTimePicker(
      context: context,
      initialTime: time
    );

    if(t != null)
      setState(() {
        time = t;
      });

  }
}