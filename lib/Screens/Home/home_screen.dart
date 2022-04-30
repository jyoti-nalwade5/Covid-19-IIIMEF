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
        drawer: Container(
                width:260,
                child: NavigationDrawer()),
        endDrawer: NavigationDrawer(),
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: MaterialButton(
              color: Colors.blue,
              child: Text("Home Screen"),
              onPressed: (){//Scaffold.of(context).openDrawer();
              },
          ),
      )
    );
  }
}

// Widget Builder(
//           builder: (context) => Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: MaterialButton(
//               color: Colors.blue,
//               child: Text("Click"),
//               onPressed: (){Scaffold.of(context).openDrawer();},
//           ),
//         ),
//       )