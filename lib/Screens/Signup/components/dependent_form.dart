import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/labled_checkbox.dart';
import 'package:flutter_application_1/constants.dart';



class DependentForm extends StatefulWidget {
   DependentForm({Key key,
 }) : super(key: key);

  @override
  State<DependentForm> createState() => _DependentFormState();
}

class _DependentFormState extends State<DependentForm> {
  static const family = <String>['spouse', 'Child', 'Parents'];
  bool _isSelected = false;
  String dropdownValue="IIIMEF";
  var values=['IIIMEF', 'IIIMIG','3DMLG','IIIMSB'];
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            const Text(
              "Select all the service members in your family",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            LabeledCheckbox(
              label: 'Spouse',
              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 20.0),
              value: _isSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              } 
            ),
            LabeledCheckbox(
              label: 'Child',
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              value: _isSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              } 
            ),
            LabeledCheckbox(
              label: 'Parents',
              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 20.0),
              value: _isSelected,
              onChanged: (bool newValue) {
                setState(() {
                  _isSelected = newValue;
                });
              } 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              const Text("Command:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: appPrimaryColor),),
              const SizedBox(
                width: 50,
              ),
              DropdownButton(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              style: const TextStyle(color: appPrimaryColor),
              items:values.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }
              ).toList(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              const Text("Supervisor:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: appPrimaryColor),),
              const SizedBox(
                width: 50,
              ),
              DropdownButton(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              style: const TextStyle(color: appPrimaryColor),
              items:values.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }
              ).toList(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              ),
              ]
            )

          ]
    );
  }
}