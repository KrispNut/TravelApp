import 'package:flutter/material.dart';
import 'package:travel_app/Models/Buttons_Data.dart';
import 'package:travel_app/Buttons/Category_Button.dart';
import 'package:travel_app/Buttons/Travel_Button.dart';
import 'package:travel_app/icons.dart';

class Home_Page extends StatefulWidget {

  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  final double toolbarOpacity = 2.0;
  int current_index = 0;
  void onTap(int index)
  {
    setState((){
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 350),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
        flexibleSpace: Padding(
          padding:EdgeInsets.all(40),
          child: Column(
            children: [
              Text('Hi, Jennifer',style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.normal),),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,40,0,0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Where do\nyou want to go?',style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),)
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,30,0,0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(80),
                      right: Radius.circular(80),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30,0,10,0),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search for places...',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search, color: Colors.black),
                            onPressed: () => _searchController.clear(),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Camp.jpg'),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(MyFlutterApp.bell, size: 35, color: Colors.deepOrange),
              onPressed: () {},
            ),
          ],

        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget> [
            const Padding(
              padding: EdgeInsets.fromLTRB(35,0,0,30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Categories',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
            ),
            SizedBox(
              height: Homepage_Model.categories_button_data[0].height,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Homepage_Model.categories_button_data.length,
                itemBuilder: (context, index) {
                  return Category_Button(
                          data: Homepage_Model.categories_button_data[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: Homepage_Model.travel_button_data[0].height,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Homepage_Model.travel_button_data.length,
                itemBuilder: (context, index) {
                  return Travel_Button(
                          data: Homepage_Model.travel_button_data[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                width: screenWidth-20,
                height: 70,
                child: BottomNavigationBar(
                  onTap: onTap,
                  currentIndex: current_index,
                  selectedFontSize: 0,
                  unselectedFontSize: 0,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  elevation: 0,
                  items: const [
                    BottomNavigationBarItem(label: 'Home',icon: Icon(MyFlutterApp.home),backgroundColor: Colors.black,),
                    BottomNavigationBarItem(label: 'Navigate',icon: Icon(MyFlutterApp.compass),backgroundColor: Colors.black,),
                    BottomNavigationBarItem(label: 'Like',icon: Icon(MyFlutterApp.glass_heart),backgroundColor: Colors.black,),
                    BottomNavigationBarItem(label: 'Profile',icon: Icon(MyFlutterApp.user_outline),backgroundColor: Colors.black,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}