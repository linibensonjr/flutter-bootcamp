import 'package:flutter/material.dart';

class CreateTrip extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateTripState();
  }
}

class _CreateTripState extends State<CreateTrip> {
  String departure = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Trip'),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                hintText: "Enter Depature",
            ),
                  onChanged: (String string) {
                    setState(() {
                      departure = string;
                  });
                },
              ),

        ],
      ),
    ),
    );
  }

}