import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class RadioList extends StatefulWidget {
  final ValueSetter<String> onValueSelected;
  
  RadioList({Key key,@required this.onValueSelected}) : super(key: key);
  
  @override
  _RadioListState createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  static const category = <String>['ServiceMember', 'Contractor', 'Dependent'];
  String selectedValue="";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(
          color: appPrimaryLightColor,
        ),
        buildRadio(),
        Divider(
          color: appPrimaryLightColor,
        ),
      ],
    )));
  }

  buildRadio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: category.map(
        (value) {

          return RadioListTile<String>(
              value: value,
              groupValue: selectedValue,
              title: Text(
                value,
                style: TextStyle(color: appPrimaryColor),
              ),
              activeColor: Colors.blue,
              onChanged: (value) {              
                setState(() {
                  selectedValue = value;
                  if(value =='Dependent'){
                      widget.onValueSelected(selectedValue);
                  }
                  
              });
              }
              );
        },
      ).toList(),
    );
  }
}
