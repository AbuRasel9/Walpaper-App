import 'package:flutter/material.dart';
import 'package:walpaper/controller/api_operation.dart';
import 'package:walpaper/views/widget/cat_block.dart';
import 'package:walpaper/views/widget/custom_appbar.dart';
import 'package:walpaper/views/widget/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {

    super.initState();
    ApiOperation.getTrandingWalpapers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          //custom app use widget
          title: CustomAppBar(
            word1: "Walpaper ",
            word2: "App",
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                //search bar

                search(
                  text: 'Search Walpaper',
                ),
                //Category block
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 25,
                      itemBuilder: (context, index) {
                        return const CategoryBlock();
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                //image part
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 400,
                                crossAxisCount: 2,
                                //middle space
                                crossAxisSpacing: 13,
                                mainAxisSpacing: 10),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            // margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                            height: 700,
                            width: 50,

                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  height: 700,
                                  width: 50,
                                  "https://images.pexels.com/photos/17992693/pexels-photo-17992693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
