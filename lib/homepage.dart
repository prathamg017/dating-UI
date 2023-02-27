import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:internship/cards.dart';
import 'package:internship/list.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 242, 246),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 3,
          // onTap: _updateIndex,
          selectedItemColor: Colors.pink[700],
          // selectedFontSize: 13,
          // unselectedFontSize: 13,
          // iconSize: 30,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Iconsax.home),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Iconsax.global_search),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Iconsax.calendar_edit),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Iconsax.messages),
            ),
          ],
        ),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(
                      'Find Flames',
                      style: TextStyle(
                          fontSize: 20,
                          // fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent),
                    ),
                    Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.sliders)))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: 110,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber),
                              child: Center(child: Icon(Iconsax.heart))),
                          Row(
                            children: [
                              Text('Likes'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          cards(),
                          Text(data[0][1].toString()),
                        ],
                      ),
                      Column(
                        children: [
                          cards(),
                          Row(
                            children: [
                              Text(data[1][1].toString()),
                              Icon(
                                Icons.verified_rounded,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          cards(),
                          Text(data[0][1].toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Material(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            elevation: 10,
            child: Container(
              width: width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(25)), // BoxDecoration
              padding: EdgeInsets.all(12),
              child: Row(children: [
                Icon(
                  Iconsax.search_normal,
                  color: Colors.grey,
                ), // Icon I
                SizedBox(
                  width: 5,
                ), // Sized Box
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ) // TextStyle
                // Text
              ]),
            ),
          ),
// Column

          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text(data[index][1].toString()),
                        subtitle: Text(data[index][2].toString()),
                        leading: CircleAvatar(
                          radius: 25.0,
                          backgroundImage:
                              NetworkImage(data[index][0].toString()),
                          backgroundColor: Colors.transparent,
                        ),
                        trailing: Column(
                          children: [
                            Text('13:11'),
                            Badge(
                              badgeContent: Text(data[index][3].toString()),
                              badgeStyle:
                                  BadgeStyle(badgeColor: Colors.pinkAccent),
                            )
                          ],
                        ),
                      );
                    })),
              ),
            ),
          ),
        ])));
  }
}
