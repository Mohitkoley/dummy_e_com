import 'package:e_com/screen/custom_shape.dart';
import 'package:e_com/widgets/home_grid_items.dart';
import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/image4.jpg",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Hi, Arif",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.shopping_bag_outlined)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 6,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Explore the",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("For you 😉",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CustomPaint(
                        isComplex: true,
                        size: Size(
                            MediaQuery.of(context).size.width,
                            (MediaQuery.of(context).size.width * 0.3)
                                .toDouble()),
                        painter: BlackDesign(),
                      ),
                    ),
                    Positioned(
                        bottom: 38,
                        left: 30,
                        child: Text(
                          "best",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 23,
                        right: 32,
                        child: Text(
                          "collections",
                          style: TextStyle(
                              color: Color.fromARGB(255, 209, 235, 160),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    textAlign: TextAlign.start,
                    "Categories",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 40,
                    width: 70,
                    child: const Center(
                      child: Text(
                        "Men's",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 90,
                    child: const Center(
                      child: Text(
                        "Women's",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: 70,
                    child: const Center(
                      child: Text(
                        "Kids",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 17,
                      crossAxisCount: 2,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return GridItem(index: index);
                  })
            ],
          )),
        ),
      ),
    );
  }
}
