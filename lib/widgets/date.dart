import 'package:flutter/material.dart';
import 'guest.dart';


class DateCalendarClass extends StatefulWidget {
  final String selectedString;
  DateCalendarClass({required this.selectedString});

  @override
  _DateCalendarClassState createState() =>
      _DateCalendarClassState();
}

class _DateCalendarClassState
    extends State<DateCalendarClass> {
  TextEditingController searchController = TextEditingController();
  DateTime? checkInDate;
  DateTime? checkOutDate;

  Future<void> _selectDate(BuildContext context, bool isCheckIn) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedDate != null && pickedDate != (isCheckIn ? checkOutDate : checkInDate)) {
      setState(() {
        if (isCheckIn) {
          checkInDate = pickedDate;
        } else {
          checkOutDate = pickedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels Near ${widget.selectedString}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Check-In", style: TextStyle(color:Colors.blueAccent, fontSize: 22.0),),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ListTile(
                        subtitle: Center(
                          child: Text(
                            checkInDate?.toString() ?? 'Check-in',
                            style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        onTap: () => _selectDate(context, true),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Check-Out", style: TextStyle(color:Colors.blueAccent, fontSize: 22.0),),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ListTile(
                        subtitle: Center(child: Text(checkOutDate?.toString() ?? 'Open Calender ',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                        onTap: () => _selectDate(context, false),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddGuestClass(
                          selectedString: widget.selectedString,
                        checkInDate: checkInDate,
                        checkOutDate: checkOutDate,
                      )
                  ),
                );
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}