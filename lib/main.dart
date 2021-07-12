
import 'package:flutter/material.dart';

import 'customerform.dart';
import 'mershent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Radio Button Group Example"),
          ),
          body: SafeArea(
              child : Center(

                child:Column(
                  children: [

                    RadioGroup(),
                  ],
                ),

              )
          )
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class FruitsList {
  String name;
  int index;
  FruitsList({this.name, this.index});
}

class RadioGroupWidget extends State {

  // Default Radio Button Item
  String radioItem = 'Customer';

  // Group Value for Radio Button.
  int id = 1;

  List<FruitsList> fList = [
    FruitsList(
      index: 1,
      name: "Customer",
    ),
    FruitsList(
      index: 2,
      name: "mershent",
    ),

  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem '+"page", style: TextStyle(fontSize: 23))
        ),
        id==1 ? MyCustomForm():Mershent(),
        //id=1{Container()};else Container(),
        //ondition == true ? new Container() : new Container()

        Expanded(
            child: Container(
              height: 350.0,
              child: Column(
                children:
                fList.map((data) => RadioListTile(
                  title: Text("${data.name}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      id = data.index;
                    });
                  },
                )).toList(),
              ),
            )),
            Center(
            child: ElevatedButton(
            onPressed: () {
    // Navigate back to first route when tapped.
    },
       child: Text('Go Home'),
    ),),
      ],
    );
  }
}
