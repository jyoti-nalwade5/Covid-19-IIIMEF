import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Covid_test/covid_test.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/constants.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
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
              onClicked: () {}
              //Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => UserPage(
              //     name: 'Sarah Abs',
              //     urlImage: urlImage,
              //   ),
              // )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  //buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Covid-19',
                    icon: Icons.edit_attributes_sharp,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'TestResult',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  // buildMenuItem(
                  //   text: 'Updates',
                  //   icon: Icons.update,
                  //   onClicked: () => selectedItem(context, 3),
                  // ),
                  const SizedBox(height: 24),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings_applications,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Logout',
                    icon: Icons.power_off_outlined,
                    onClicked: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  )
                  )
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
     VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: appPrimaryColor),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: appPrimaryColor),
                  ),
                ],
              ),
              const Spacer(),
              // CircleAvatar(
              //   radius: 24,
              //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              //   child: Icon(Icons.add_comment_outlined, color: Colors.white),
              // )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

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
    const hoverColor = appPrimaryColor;

    return ListTile(
      leading: Icon(icon, color: Colors.blueGrey),
      title: Text(text, style: const TextStyle(color: color,fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.arrow_forward_ios, color: hoverColor,size: 18 ,),
      hoverColor: hoverColor,
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
    }
  }
}