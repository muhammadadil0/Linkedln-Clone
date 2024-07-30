import 'package:flutter/material.dart';
import 'home_screen.dart';

class PostPages extends StatefulWidget {
  const PostPages({super.key});

  @override
  State<PostPages> createState() => _PostPagesState();
}

class _PostPagesState extends State<PostPages> {
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 400,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
           // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 20.0,left: 25),
                child: Text('who can see your post ?',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0,left: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.public),
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 23.0,left: 14),
                        child: Text('Anyone',style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0,left: 14),
                        child: Text('Anyone on or off linkedln',style: TextStyle(color: Colors.grey,),),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 8,left: 74,top: 18),
                      child: Icon(Icons.check_circle),),


                ],

              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0,left: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.group_sharp),
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 23.0,left: 14),
                        child: Text('Connections Only',style: TextStyle(fontWeight: FontWeight.w600),),
                      ),

                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 8,left: 120,top: 18),
                    child: Icon(Icons.check_circle_outline),),


                ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0,left: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.group_sharp),
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 23.0,left: 14),
                        child: Text('Groups Only',style: TextStyle(fontWeight: FontWeight.w600),),
                      ),

                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 8,left: 155,top: 18),
                    child: Icon(Icons.check_circle_outline),),


                ],

              ),

            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  icon: const Icon(Icons.close, color: Colors.black),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 3.0, left: 5),
                  child: CircleAvatar(
                    maxRadius: 15,
                    backgroundImage: AssetImage('assets/adil.jpg'),
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
                Text('Anyone', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500)),
                IconButton(
                  onPressed: _showBottomSheet,
                  icon: const Icon(Icons.arrow_drop_down),
                ),
                SizedBox(
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.access_time_rounded),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Post',style: TextStyle(color: Colors.grey),),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Share your thoughts',
                  border: InputBorder.none
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
