import 'package:flutter/material.dart';
import './../utilities/constants.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      )
  );


  Widget buildHeader(BuildContext context) => Material(
    color: Colors.blue.shade700,
    child: InkWell(
      onTap: () => Navigator.pushNamed(context, userPageRoute),
      child: Container(
        padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
        ),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 52,
             backgroundImage: NetworkImage('https://images.unsplash.com/photo-1517849845537-4d257902454a')
          ),
          SizedBox(height: 12),
          Text(
           'John Doe',
            style: TextStyle(fontSize:28, color: Colors.white)
          ),
          Text(
            'john.doe@mymail.com',
           style: TextStyle(fontSize: 16, color:Colors.white)
          ),
      ],
    ),
      ),
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap:() => Navigator.pushNamed(context, homeRoute),
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: const Text('Favorites'),
          onTap:() {
            Navigator.pop(context);
            Navigator.pushNamed(context, favoritesRoute);
          },
        ),
        ListTile(
          leading: const Icon(Icons.workspaces_outline),
          title: const Text('Workflow-FirstScreen'),
          onTap:() {
            Navigator.pop(context);
            Navigator.pushNamed(context, firstScreenRoute);
          },
        ),
        ListTile(
          leading: const Icon(Icons.update),
          title: const Text('Updates-SecondScreen'),
          onTap:() {
            Navigator.pop(context);
            Navigator.pushNamed(context, secondScreenRoute);
          },
        ),
        const Divider(color:Colors.black),
        ListTile(
          leading: const Icon(Icons.account_tree_outlined),
          title: const Text('Plugins'),
          onTap:() {},
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none),
          title: const Text('Notifications'),
          onTap:() {},
        ),
      ],
    ),
  );
}
