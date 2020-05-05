import 'package:flutter/material.dart';
import 'package:trippas/splashScreen.dart';
import 'package:trippas/trip.dart';

void main() {
  runApp(MaterialApp(
      home: SplashScreen(),
  ));
}
String name = "Iniobong";
class TripPage extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return Scaffold(

            body: Container(
              padding: EdgeInsets.only(top: 50.0, left: 25.0, right: 20.0),
              color: Colors.white,
              child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Hello, '+name,
                          style: TextStyle(
                              fontSize: 20.0
                          ),),
                        Text(
                            '20 Trips',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                background: Paint()..color=Colors.lightBlue)
                        ),
                      ],
                    ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Create your \ntrips wih us',
                      style: TextStyle(
                        fontSize: 40.5,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                ),
             Expanded(
               child: ListView.separated(
                 itemCount: 5,
                 separatorBuilder: (BuildContext context, int index) => Divider(),
                 itemBuilder: (BuildContext context, int index) {
                   return Card(
                     child: Padding(
                       padding: EdgeInsets.all(12.0),
                       child: Column(
                       children: <Widget>[
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text(
                               'Lagos',
                               style: TextStyle(
                                   fontSize: 30.0,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'nunito-bold'),
                             ),
//                Icon(FlatIcons.paper_plane_1),
                             Icon(Icons.ac_unit,
                               size: 15.0,
                               color: Colors.grey.shade400,
                             ),
                             Text(
                               'London',
                               style: TextStyle(
                                   fontSize: 30.0,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'nunito-bold'),
                             ),

                            
                       ],
                     )
                   ])
                     )
                   );
                 },
               )
             )
              ],
             ),
            ),


          floatingActionButton: new FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CreateTrip()));

              },
              tooltip: 'Increment',
              child: new Icon(Icons.add),
              ),
        );

  }
}
