import 'package:flutter/material.dart';
import 'package:hotel_app/hotels/booking.dart';
import 'package:hotel_app/screen/login.dart';

class AddGuestClass extends StatefulWidget {
  final String selectedString;
  final DateTime? checkInDate;
  final DateTime? checkOutDate;

  const AddGuestClass({
    Key? key,
    required this.selectedString,
    required this.checkInDate,
    required this.checkOutDate,
  }) : super(key: key);


  @override
  _AddGuestClassState createState() => _AddGuestClassState();
}

class _AddGuestClassState extends State<AddGuestClass> {
  int _rooms = 1;
  int _adults = 1;
  int _children = 0;
  int _infants = 0;

  void _incrementRooms(){
    setState(() {
      _rooms++;
    });
  }
  void _decrementRooms(){
    setState(() {
      if(_rooms>1){
        _rooms--;
      }
    });
  }

  void _incrementAdults() {
    setState(() {
      _adults++;
    });
  }

  void _decrementAdults() {
    setState(() {
      if (_adults > 1) {
        _adults--;
      }
    });
  }

  void _incrementChildren() {
    setState(() {
      _children++;
    });
  }

  void _decrementChildren() {
    setState(() {
      if (_children > 0) {
        _children--;
      }
    });
  }

  void _incrementInfants() {
    setState(() {
      _infants++;
    });
  }

  void _decrementInfants() {
    setState(() {
      if (_infants > 0) {
        _infants--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.selectedString),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[100],
          width: 400,
          height: 600,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Text(
                      'Check-in Date: ${widget.checkInDate}',
                    ),
                    Text(
                      'Check-out Date: ${widget.checkOutDate}',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Center(child: Text("Add Guests", style: TextStyle(fontSize: 22.0, color: Colors.blue))),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Rooms",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.remove, size: 40,
                            color: Colors.red),
                          onPressed: _decrementRooms,
                        ),
                        Text("$_rooms"),
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.green,
                          ),
                          onPressed: _incrementRooms,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Adults",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.remove,
                            size: 40,
                            color: Colors.red,
                          ),
                          onPressed: _decrementAdults,
                        ),
                        Text("$_adults"),
                        IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.green,
                          ),
                          onPressed: _incrementAdults,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Children",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove, size: 40, color: Colors.red),
                          onPressed: _decrementChildren,
                        ),
                        Text("$_children"),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.green,
                          ),
                          onPressed: _incrementChildren,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Infant",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove, size: 40, color: Colors.red),
                          onPressed: _decrementInfants,
                        ),
                        Text("$_infants"),
                        IconButton(
                          icon: Icon(Icons.add, size: 40, color: Colors.green),
                          onPressed: _incrementInfants,
                        ),
                      ],
                    ),
                  ],
                ),
                MaterialButton(
                  color: Colors.green,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingPage(
                          selectedString: widget.selectedString,
                          checkInDate: widget.checkInDate,
                          checkOutDate: widget.checkOutDate,
                          rooms: _rooms,
                          adults : _adults,
                          children: _children,
                          infant: _infants
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Search Hotels",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}