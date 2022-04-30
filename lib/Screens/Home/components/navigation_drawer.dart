

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/covid_test.dart';
import 'package:flutter_application_1/constants.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 10);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const name = 'Sarah Abs';
    const email = 'sarah@abs.com';
    const urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: Colors.white70,
        child: ListView(
          children: <Widget>[
            buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                height: size.height*0.3
              ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  //buildSearchField(),
                  const SizedBox(height: 24),
                  divider,
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () => selectedItem(context, 0),
                  ),                  
                  divider,
                  buildMenuItem(
                    text: 'Covid-19',
                    icon: Icons.calendar_today,
                    onClicked: () => selectedItem(context, 1),
                  ),                  
                  divider,
                  buildMenuItem(
                    text: 'TestResult',
                    icon: Icons.note_alt_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),                  
                  divider,
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings_applications,
                    onClicked: () => selectedItem(context, 4),
                  ),                  
                  divider,
                  buildMenuItem(
                    text: 'Logout',
                    icon: Icons.logout,
                    onClicked: () => selectedItem(context, 5),
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const LoginScreen();
                  //     },
                  //   ),
                  // )
                  ),
                  divider,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
     String urlImage,
     String name,
     String email,
     double height
  }) =>
      InkWell(
        child: Container(
          padding: padding,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),  
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.black;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
     String text,
     IconData icon,
    VoidCallback onClicked,
  }) {
    const color = Colors.black;
    const hoverClr = appPrimaryLightColor;

    return ListTile(
      leading: Icon(icon, color: Colors.blueGrey),
      title: Text(text, style: const TextStyle(color: color,fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.arrow_forward_ios, color: hoverClr,size: 18 ,),
      hoverColor: hoverClr,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CovidTest(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CovidTest(),
        ));
        break;
      // case 5:
      //   FirebaseAuth.instance.signOut().then((value) {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => const LoginScreen()));
      //       });
    }
  }
}