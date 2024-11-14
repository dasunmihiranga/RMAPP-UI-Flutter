import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Restaurant Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),  // Adjust the value as needed
            topRight: Radius.circular(30),  // Adjust the value as needed
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
          child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor:Colors.grey.shade800,
              tabBorderRadius: 15,
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs:[
                GButton(
                    icon: Icons.home,
                    text: 'Home',
                ),
                GButton(icon:
                    Icons.map,
                    text: 'Map',
                ),
                GButton(
                    icon: Icons.shopping_cart,
                    text: 'Cart',

                ),
                GButton(
                    icon: Icons.settings,
                    text: 'Settings',
                ),

              ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //UserDetail
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                "https://picsum.photos/seed/picsum/200/300"),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Dasun!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "Palazhi ,Calicu ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //searchbar
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(25)),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Image Gallery
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                        child: Image.network(
                          'https://picsum.photos/200/300?grayscale',
                          height: 100,
                          width: 300,
                          fit: BoxFit
                              .cover, // Ensures the image fills the specified width and height
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                        child: Image.network(
                          'https://picsum.photos/200/300?grayscale',
                          height: 100,
                          width: 300,
                          fit: BoxFit
                              .cover, // Ensures the image fills the specified width and height
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                        child: Image.network(
                          'https://picsum.photos/200/300?grayscale',
                          height: 100,
                          width: 300,
                          fit: BoxFit
                              .cover, // Ensures the image fills the specified width and height
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                        child: Image.network(
                          'https://picsum.photos/200/300?grayscale',
                          height: 100,
                          width: 300,
                          fit: BoxFit
                              .cover, // Ensures the image fills the specified width and height
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "MENU",
                      style: TextStyle(
                        color: Colors.grey[400]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "SORT BY",
                            style: TextStyle(
                                color: Colors.grey[400]
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                                Icons.sort,
                              color: Colors.white,
                            ),
                          )
                        ],

                      ),
                    ),
                  ),

                ],
              ),
              //menu list
              Container(
                height: 50,
                margin: const EdgeInsets.all(10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Example button with underline
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Define your action here
                          },
                          child: Text(
                            "Frequent order",
                            style: TextStyle(
                                color: Colors.white, // Text color
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                          height: 2, // Thickness of the underline
                          width: 30, // Width of the underline
                          color: Colors.red, // Color of the underline
                        ),
                      ],
                    ),

                    // Other buttons without underline
                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Veg",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Fish",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Egg",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Chicken",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Biriyani",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Kottu",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Define your action here
                      },
                      child: Text(
                        "Fride Rice",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),

                    // Add more buttons as needed
                  ],
                ),
              ),
              //Food Gallery

            ],
          ),
        ),
      ),

    );
  }
}
