import 'package:flutter/material.dart';
import 'package:linkedln_clone/pages/jobs_page.dart';
import 'package:linkedln_clone/pages/network_page.dart';
import 'package:linkedln_clone/pages/notification_page.dart';
import 'package:linkedln_clone/pages/post_pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  int count = 81;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            myIndex = index;
            if (myIndex == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NetworkPage()));
            } else if (myIndex == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PostPages()));
            } else if (myIndex == 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NotificationPage()));
            } else if (myIndex == 4) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JobsPage()));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const JobsPage()));
            }
          });
        },
        currentIndex: myIndex,
        items: [
          const BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_rounded),
          ),
          const BottomNavigationBarItem(
            label: 'Network',
            icon: Icon(Icons.group),
          ),
          const BottomNavigationBarItem(
            label: 'Post',
            icon: Icon(Icons.add_circle_outlined),
          ),
          const BottomNavigationBarItem(
            label: 'Notifications',
            icon: Icon(Icons.notifications),
          ),
          const BottomNavigationBarItem(
            label: 'Jobs',
            icon: Icon(Icons.work),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 54.0, left: 12),
                child: CircleAvatar(
                  minRadius: 15,
                  backgroundImage: AssetImage('assets/adil.jpg'),
                ),
              ),
              const SizedBox(width: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55.0, left: 7),
                    child: Container(
                      height:
                      30, // Increase height to make textfield more visible
                      width: 220,
                      color: Colors.white54,
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left:
                                0.0), // Adjust padding to reduce icon size
                            child: Icon(Icons.search,
                                size: 18), // Adjust size of icon
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            height:
                            1.5, // Adjust the vertical position of the hint text
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(3.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(3.0)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(3.0)),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(
                              left:
                              0.0), // Adjust padding to change the position of the hint text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 54.0, left: 33),
                child: Container(child: const Icon(Icons.message)),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            height: 7,
            width: double.infinity,
            color: Colors.grey[350],
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of times to duplicate the post
              itemBuilder: (context, index) {
                return PostSection(
                  count: count,
                  onIconTap: () {
                    setState(() {
                      count++;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PostSection extends StatelessWidget {
  final int count;
  final VoidCallback onIconTap;

  const PostSection({Key? key, required this.count, required this.onIconTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 14.0, top: 12),
              child: CircleAvatar(
                minRadius: 19,
                backgroundImage: AssetImage('assets/adil.jpg'),
              ),
            ),
            const SizedBox(width: 10), // Add spacing between avatar and text
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Muhammad Adil',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                          width:
                          8), // Adjust spacing between the name and '1st' text
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: getString(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Text('Fast Nuces Student',
                        style: TextStyle(color: Colors.grey[600])),
                  ),
                  const SizedBox(
                      height: 20), // Add spacing between the two text lines
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Over the past few days, i have been immersed in\n exploring the intricate mechanism of backened...\n',
                        style: TextStyle(color: Colors.grey[800])),
                  ),
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/adil.jpg'),
                        fit: BoxFit.cover, // Optionally, you can use fit to control the image display
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onIconTap,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(Icons.thumb_up_alt_outlined, size: 10, color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: onIconTap,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: const Icon(Icons.favorite, size: 10, color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: onIconTap,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: const Icon(Icons.waving_hand_rounded, size: 10, color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '$count',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget getString() {
  return const Text('1st', style: TextStyle(color: Colors.grey));
}

Widget getImage() {
  return Container(
    width: 100,
    height: 100,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/adils.jpg'),
        fit: BoxFit.cover, // Optionally, you can use fit to control the image display
      ),
    ),
  );
}
