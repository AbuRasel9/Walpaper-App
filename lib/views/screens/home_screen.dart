import 'package:flutter/material.dart';
import 'package:walpaper/views/widget/custom_appbar.dart';
import 'package:walpaper/views/widget/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        //custom app use widget
        title:  CustomAppBar(word1: "Walpaper ",word2: "App",),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height:20),

            search(text: 'Search Walpaper',),
            //search bar
          ],
        ),
      )


    );
  }
}

