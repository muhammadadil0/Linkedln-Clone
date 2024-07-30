import 'package:flutter/material.dart';

import 'home_screen.dart';
class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                icon: Icon(Icons.arrow_back,color: Colors.black,)
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  minRadius: 14,
                  backgroundImage: AssetImage('assets/adil.jpg'),
                ),
                Container(
                  width: 180,
                  height: 25,
                  color: Colors.grey[150],
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        height: 2.5,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 19,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                ),
        
                Icon(Icons.message),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black54),
        
                    ),
                    child: Center(child: Text('My jobs',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),))),
                Container(
                  height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('Preferences',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),))),
                Container(
                    width: 130,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('Post a free job',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),))),
              ],
            ),
         SizedBox(
           height: 8,
         ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10,
              color: Colors.grey[300],
            ),
            Padding(
              padding:  EdgeInsets.only(left:
              14.0,top: 13),
              child: Text('Jobs pick for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                    ),
        
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 6),
                      child: Text('front End Native IOS Developer',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Knock Edge',style: TextStyle(fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Text('Pakistan (Remote)',style: TextStyle(color: Colors.grey),),
                    ),
        
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Icon(Icons.close),
                ),
              ],
            ),
        
          ],
        )),
      ),
    );;
  }
}
