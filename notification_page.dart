import 'package:flutter/material.dart';

import 'home_screen.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late bool isAll  = false;
  late bool isPost = false;
  late bool isMention = false;
  void setIsAll(){
    setState(() {
      isAll = true;
      isPost = false;
      isMention = false;
    });
  }void setIsPost(){
    setState(() {
      isAll = false;
      isPost = true;
      isMention = false;
    });
  }void setIsMention(){
    setState(() {
      isAll = false;
      isPost = false;
      isMention = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
              const Icon(Icons.settings),
               Icon(Icons.message),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    color: isAll? Colors.green:Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Center(child: GestureDetector(
                      onTap: setIsAll,
                      child: Text('All',style: TextStyle(color:isAll? Colors.white:Colors.grey),)))),
              GestureDetector(
                onTap: setIsPost,
                child: Container(
                  width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      color: isPost? Colors.green:Colors.white,
                        border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(17),
                    ),

                    child: Center(child: Text('MyPosts',style: TextStyle(color:isPost? Colors.white:Colors.grey),))),
              ),
              GestureDetector(
                onTap: setIsMention,
                child: Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: isMention? Colors.green:Colors.white,
                      border: Border.all(

                          color: Colors.grey),
                      borderRadius: BorderRadius.circular(17),
                    ),

                    child: Center(child: Text('Mentions',style: TextStyle(color:isMention? Colors.white:Colors.grey),))),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                   Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                   Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 14),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/adil.jpg'))
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('CODETECH IT SOLUTION' ,style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('interested comment Please ? \ninterested',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('48m',style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
