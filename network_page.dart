import 'package:flutter/material.dart';
import 'home_screen.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  late bool isGrownSelected = false;
  late bool isCatchUpSelected = false;

  void selectGrown() {
    setState(() {
      isGrownSelected = true;
      isCatchUpSelected = false;
    });
  }

  void selectCatchUp() {
    setState(() {
      isGrownSelected = false;
      isCatchUpSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
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
                  const Icon(Icons.message)
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: selectGrown,
                    child: Text(
                      'Grow',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isGrownSelected ? Colors.green : Colors.grey,
                        decoration: isGrownSelected
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: Colors.green,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: selectCatchUp,
                    child: Text(
                      'Catch Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isCatchUpSelected ? Colors.green : Colors.grey,
                        decoration: isCatchUpSelected
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 6,
                width: double.infinity,
                color: Colors.grey[400],
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Text(
                        'Invitation  (0)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              Container(
                height: 6,
                width: double.infinity,
                color: Colors.grey[400],
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Text(
                        'Manage my network',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              Container(
                height: 6,
                width: double.infinity,
                color: Colors.grey[400],
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 10),
                      child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                              'People you may know based on your recent activity')),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Container(
                                    width: 160,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 21.0),
                                          child: CircleAvatar(
                                            maxRadius: 36,
                                            backgroundImage:
                                            AssetImage('assets/adil.jpg'),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Muhammad Adil',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Text(
                                          'Software Developer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Text(
                                          'Ui Designer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            '17 mutual connections',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.0), // Set border color to blue
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'connect',
                                              style:
                                              TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Container(
                                    width: 160,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 21.0),
                                          child: CircleAvatar(
                                            maxRadius: 36,
                                            backgroundImage:
                                            AssetImage('assets/adil.jpg'),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Muhammad Adil',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Text(
                                          'Software Developer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Text(
                                          'Ui Designer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            '17 mutual connections',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.0), // Set border color to blue
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'connect',
                                              style:
                                              TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Container(
                                    width: 160,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 21.0),
                                          child: CircleAvatar(
                                            maxRadius: 36,
                                            backgroundImage:
                                            AssetImage('assets/adil.jpg'),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Muhammad Adil',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Text(
                                          'Software Developer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Text(
                                          'Ui Designer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            '17 mutual connections',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.0), // Set border color to blue
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'connect',
                                              style:
                                              TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Container(
                                    width: 160,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 21.0),
                                          child: CircleAvatar(
                                            maxRadius: 36,
                                            backgroundImage:
                                            AssetImage('assets/adil.jpg'),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Muhammad Adil',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Text(
                                          'Software Developer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Text(
                                          'Ui Designer',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                        const Padding(
                                          padding:
                                          EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            '17 mutual connections',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 14,
                                        ),
                                        Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.blue,
                                                width: 1.0), // Set border color to blue
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'connect',
                                              style:
                                              TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
