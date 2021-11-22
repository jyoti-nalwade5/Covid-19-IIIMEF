import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/components/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawer(),
        // endDrawer: NavigationDrawerWidget(),
        body: Builder(
          builder: (context) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: MaterialButton(
              color: Colors.blue,
              child: Text("Click"),
              onPressed: (){Scaffold.of(context).openDrawer();},
            //   icon: Icons.open_in_new,
            //   text: 'Open Drawer',
            //   onClicked: () {
            //     Scaffold.of(context).openDrawer();
                
            //   },
            // ),
          ),
        ),
      ));
  }
}