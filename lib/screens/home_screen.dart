import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Inside_Pages/Notification_page.dart';
import '../widgets/best_deals_slider.dart';
import '../widgets/category_slider.dart';
import '../widgets/image_slider.dart';
import '../widgets/popular_items_slider.dart';
import '../widgets/search_bar.dart';
import 'Category.dart';


class HomeScreen extends StatelessWidget {
  final String mobileNumber;

  HomeScreen({required this.mobileNumber});

  // final String mobileNumber;
  //
  // // Constructor with named parameter
  // HomeScreen({Key? key, this.mobileNumber = ''}) : super(key: key);
  Future<void> logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Clear the stored data
    prefs.remove('isLoggedIn');
    prefs.remove('mobileNumber');

    // Navigate to the login screen
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => HomeScreen(mobileNumber: ''),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   // leading: const BackButton(
      //   //   color: Colors.black,),
      //
      //   title: const Text("Grocery App",
      //     style: TextStyle(color: Colors.black),),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // User's Location
         Padding(
        padding: EdgeInsets.all(16.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26,),
                Text("mobile:  ${mobileNumber}"),
                Text('Location',
                  style: TextStyle(color: Colors.black54,
                    fontFamily: "NexaRegular",
                  ),),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.green,),
                    Text(
                      'Pune City,India',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            IconButton(
              onPressed: () {
                // Your notification action
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotificationPage())
                );
              },
              icon: Icon(

                Icons.notifications,
                color: Colors.black,
              ),
              iconSize: 25,
            ),

            // Icon(Icons.ice_skating),
          ],
        ),
      ),

            Container(
              // height: 200.0, // Set a suitable height
              child: SearchBartool(),
            ),

            SizedBox(height: 25,),
            // Text('Mobile: $mobileNumber'),

            // -----------------------------Image slider Code-------------------------------

            Container(
                child:
                PopularItems1Slider(productCategory: 'Vegetable', mobileNumber: mobileNumber,),
                // ImageSlider(),
            ),
            // -----------------------------Image slider Category Section Code-------------------------------
            SizedBox(height: 25,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '  Category',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: "NexaRegular",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CategoryPage(mobileNumber: mobileNumber,), // Use your CategoryPage widget
                          ),
                        );
                      },
                      child:  Text(
                        'See All  ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green, // Customize the button text color
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 6,),
                //==================Fetched this Category items from Category page===============================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[0], mobileNumber: mobileNumber,), // Display the first category
                    ),
                    // SizedBox(width: 4,),
                    Container(
                      height: 120.0,
                      child: CategoryItem(category:
                      categories[1], mobileNumber: mobileNumber,), // Display the first category
                    ),
                    // SizedBox(width: 14,),
                    // Container(
                    //   height: 120.0,
                    //   child: CategoryItem(category:
                    //   categories[2]), // Display the first category
                    // ),
                    // SizedBox(width: 14,),
                    // Container(
                    //   height: 120.0,
                    //   child: CategoryItem(category:
                    //   categories[3]), // Display the first category
                    // ),
                    // Container(
                    //   height: 120.0,
                    //   child: CategoryItem(category:
                    //   categories[4]), // Display the first category
                    // ),
                  ],
                ),


              ],
            )
,
            // -----------------------------Best Deal code-------------------------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('  Best Deal',
                  style: TextStyle(fontSize: 25,color: Colors.black,
                    fontFamily: "NexaRegular",
                  ),
                ),
                SizedBox(height: 6,),
                Container(
                  height: 250.0, // Set a suitable height
                  child:
                  // BestDealsSlider(productCategory: 'Vegetable',),
                  BestDealsSlider(mobileNumber: mobileNumber,),
                ),
              ],
            ),
            // -----------------------------Popular Item code-------------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  Popular Item',
                  style: TextStyle(fontSize: 25,color: Colors.black,
                    fontFamily: "NexaRegular",
                  ),
                ),
                SizedBox(height: 6,),
                Container(
                  height: 250.0, // Set a suitable height
                  child: PopularItemsSlider(mobileNumber: mobileNumber,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
