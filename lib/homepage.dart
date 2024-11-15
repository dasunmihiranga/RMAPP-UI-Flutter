import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:restaurant_menu_ui/foodcard.dart';
import 'package:restaurant_menu_ui/models/food_item.dart';

const kDefaultPadding=20.0;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.grey[700],
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(30),
      //       topRight: Radius.circular(30),
      //     ),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
      //     child: GNav(
      //       backgroundColor: Colors.transparent,
      //       color: Colors.white,
      //       activeColor: Colors.white,
      //       tabBackgroundColor:Colors.grey.shade800,
      //       tabBorderRadius: 15,
      //       gap: 8,
      //       padding: EdgeInsets.all(16),
      //       tabs:[
      //         GButton(
      //           icon: Icons.home,
      //           text: 'Home',
      //         ),
      //         GButton(icon:
      //         Icons.restaurant_menu,
      //           text: 'Menu',
      //         ),
      //         GButton(
      //           icon: Icons.shopping_cart,
      //           text: 'Cart',
      //
      //         ),
      //         GButton(
      //           icon: Icons.settings,
      //           text: 'Settings',
      //         ),
      //
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade900,
          color: Colors.grey.shade600,
          animationDuration: Duration(milliseconds: 300),
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.restaurant_menu,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ]),
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
                                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg"),
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
                          'https://images.all-free-download.com/images/thumbjpg/burgers_discount_banner_template_realistic_contrast_6929953.jpg',
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
                          'https://image.seapik.com/template/edit/20240605/sm/a-fast-food-promotion-banner_69799.jpg',
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
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "SORT BY",
                            style: TextStyle(color: Colors.grey[400]),
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
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: sampleFoodItems.length,
                  itemBuilder: (context, index) {
                    return FoodCard(
                      food: sampleFoodItems[index],
                      onTap: () {

                      },
                    );
                  },
                ),
              ),
              //Food card
            ],
          ),
        ),
      ),
    );
  }
}



//     return Column(
//       children: <Widget>[
//
//         Container(
//           padding: EdgeInsets.all(kDefaultPadding),
//           height: 280,
//           width: 180,
//           decoration: BoxDecoration(
//               color: Colors.grey,
//               borderRadius: BorderRadius.circular(15)),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(20),
//                       topLeft: Radius.circular(20)
//                   ),
//                   child: Image.network(
//                     height: 180,
//                     width: 180,
//                     foodItem.imageUrl,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 3, right: 0, left: 5, bottom: 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       foodItem.name,
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 0, right: 0, left: 5, bottom: 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '\$${foodItem.price.toStringAsFixed(2)}',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         // Define your action here, e.g., add to cart
//                       },
//                       icon: Icon(
//                         Icons.add_shopping_cart,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//
