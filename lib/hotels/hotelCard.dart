import 'package:flutter/material.dart';

import '../utility/utility.dart';

class HotelCardView extends StatelessWidget {
  const HotelCardView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[0],
                      width: 350,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[1],
                      width: 350,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[2],
                      width: 350,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[2],
                      width: 350,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[2],
                      width: 350,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[2],
                      width: 350,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9, // Adjust as needed
            height: screenHeight * 0.4,
            child: Card(
              elevation: 8,
              margin: EdgeInsets.all(14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network(
                      UtilityClass.imgUrls[2],
                      width: 350,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 10),
                    Text("Hotel Taj", style: TextStyle(fontSize: 25.0)),
                    Text("SR 345.0",
                        style: TextStyle(fontSize: 20.0, color: Colors.red)),
                    MaterialButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Book Now"),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Add more Card widgets here as needed
        ],
      ),
    );
  }
}
