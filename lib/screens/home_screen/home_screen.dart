import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    Text("Text"),
    Text("Text 1"),
    Text("Text 2"),
    Text("Text 3"),
    Text("Text 4"),
    Text("Text 5"),
    Text("Text 6"),
  ];

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Column(
        children: [


          Container(
            height: 120,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: GestureDetector(
                    onTap: (){
                      selectedTabIndex = index;
                      setState(() {

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selectedTabIndex == index? splashColor : Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: splashColor.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 15,
                                offset: Offset(0, 10)
                            )
                          ],
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/img_google_logo.png")
                                      )
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text(
                              "Burger",
                              style: TextStyle(
                                  color: selectedTabIndex == index? Colors.white : Colors.black,
                                  fontSize: 10
                              ),
                            ),
                            SizedBox(height: 15,),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          tabs[selectedTabIndex]



        ],
      )
    );
  }
}
