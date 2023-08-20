import 'package:flutter/material.dart';
import 'package:walpaper/views/widget/cat_block.dart';
import 'package:walpaper/views/widget/custom_appbar.dart';
import 'package:walpaper/views/widget/search_bar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                const SizedBox(height: 10),
                Stack(
                  children: [
                    Image.network(
                      "https://images.pexels.com/photos/210243/pexels-photo-210243.jpeg?auto=compress&cs=tinysrgb&w=400",
                      fit: BoxFit.cover,
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black38,
                    ),
                    Positioned(
                      left: 160,
                      top: 40,
                      child: Column(

                        children: [
                          Text(

                            "Category",
                            style: TextStyle(

                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                letterSpacing: .2),
                          ),
                          SizedBox(height: 5,),
                          Text("Mountains",style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .2),)
                        ],
                      ),
                    )
                  ],
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
