import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/theme_controller.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);

  var listItems = [
    {
      'title': 'About us',
      'leading': Icon(
        Icons.people_alt_outlined,
        // color: Colors.black,
      ),
    },
    {
      'title': 'Contact us',
      'leading': Icon(
        Icons.phone,
        // color: Colors.black,
      ),
    },
  ];
  //you can add routes and more properties in this list in the future, remember to change the properties
  //of the ListTile below for them to display on the drawer!

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4 +
                MediaQuery.of(context).padding.top,
            padding: EdgeInsets.fromLTRB(
                0, MediaQuery.of(context).padding.top, 0, 10),
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/SUCCESS (1).png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'TrackerGo',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GetBuilder<ThemeController>(
            builder: (controller) {
              return ListTile(
                onTap: () {
                  controller.invertTheme();
                },
                leading: Icon(
                  Icons.dark_mode,
                ),
                title: Text(
                  'Dark theme',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                trailing: Switch.adaptive(
                  value: (controller.themeMode == ThemeMode.dark),
                  onChanged: (value) {
                    controller.invertTheme();
                  },
                ),
              );
            },
          ),
          ...listItems.map((listItem) {
            return ListTile(
              onTap: () {},
              leading: listItem['leading'] as Icon,
              title: Text(
                listItem['title'].toString(),
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_rounded,
                // color: Colors.black,,
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
