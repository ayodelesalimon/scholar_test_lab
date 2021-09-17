import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

import 'Widgets/NavBar.dart';

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage>
    with TickerProviderStateMixin {
  List<String> swipeImages = [
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
    "assets/images/student.png",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return new Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "SA",
          style: TextStyle(color: Colors.lightBlue.shade200),
        ),
        centerTitle: true,
        leading: Padding(
            padding: const EdgeInsets.only(right: 0.0, left: 0.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 5,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    //   border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            )),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/images/notifi.svg",
                //  color: Colors.blue,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 5,
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //   border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Icon(Icons.menu)),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),

            Card(
              color: Colors.transparent,
              elevation: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                child: new TinderSwapCard(
                  animDuration: 1,
                  swipeUp: true,
                  swipeDown: true,
                  orientation: AmassOrientation.TOP,
                  totalNum: swipeImages.length,
                  stackNum: 3,
                  swipeEdge: 5.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) => Container(
                      height: 340,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(swipeImages[index]),
                          ),
                          //    color: _colors[index],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Stack(
                        //  fit: StackFit.loose,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            heightFactor: 1.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(
                                      child: Text(
                                    "STEM",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  )),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "SCIENCE",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(
                                      child: Text(
                                    "STEM",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  )),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              left: 40.0,
                              top: 150.0,
                              bottom: 20,
                              child: Text(
                                "University of Cape Town \nScholarship",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                            right: 40.0,
                            top: 166.0,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: SvgPicture.asset(
                                "assets/images/love tab.svg",
                                //  color: Colors.blue,
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Card(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Scholarship Amount",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          "\$100",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    ),
                                    height: 105,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      ),
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //Card is LEFT swiping
                    } else if (align.x > 0) {
                      //Card is RIGHT swiping
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Swipe",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SvgPicture.asset('assets/images/swipe.svg'),
            //  SizedBox(height: 50,),

            //CardsSectionDraggable(),
          ],
        ),
      ),
    );
  }
}
