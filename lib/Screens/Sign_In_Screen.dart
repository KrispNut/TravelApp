import 'package:flutter/material.dart';

class Sign_In_Page extends StatelessWidget {

  const Sign_In_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(textAlign: TextAlign.center,'Sign In',style: TextStyle(color: Colors.black,fontSize: 50, fontWeight: FontWeight.w100, fontFamily: 'Sequel'),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget> [
              const SizedBox(height: 300.0),
              const Text(textAlign: TextAlign.center,'Sign Into Account',style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal,fontFamily: 'Sequel'),),
              const SizedBox(height: 20.0),
              Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Future.delayed(Duration(milliseconds: 200), () {
                      Navigator.pushNamed(context, '/home-screen');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.lightGreen.shade300,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ), child: const Text('Sign In',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100,fontFamily: 'Sequel'),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}