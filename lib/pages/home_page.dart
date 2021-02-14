import 'package:flutter/material.dart';
import 'package:new_app/pages/constant.dart';
import 'package:new_app/pages/widgets/resorts_card.dart';

import 'widgets/trending_card.dart';

enum Page { HOME, SEARCH }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Page page = Page.HOME;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/logo.png"),
                        backgroundColor: Colors.white,
                        radius: 35,
                      ),
                      onTap: () {
                        if (page == Page.HOME) {
                          setState(() {
                            page = Page.SEARCH;
                          });
                        } else {
                          setState(() {
                            page = Page.HOME;
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/sri-lanka.png"),
                          radius: 17,
                        ),
                        SizedBox(width: 10),
                        OutlineButton(
                          disabledBorderColor: Colors.blueAccent,
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                        SizedBox(width: 10),
                        OutlineButton(
                          disabledBorderColor: Colors.blueAccent,
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.lightBlueAccent[200],
                width: double.infinity,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Text(
                          "HOME",
                          style: page == Page.HOME
                              ? kSelectedTextStyle
                              : kTextStyle,
                        ),
                        onTap: () {},
                      ),
                      Text("ACCOMMODATION", style: kTextStyle),
                      Text("CAR RENTALS", style: kTextStyle),
                      Text("TODAY'S DEALS", style: kTextStyle),
                      Text("CONTACTS", style: kTextStyle),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          page == Page.HOME
                              ? Colors.lightBlueAccent.withOpacity(0.7)
                              : Colors.lightBlueAccent.withOpacity(0.1),
                          BlendMode.srcOver),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/background.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    if (page == Page.HOME)
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Explore Holiday Resorts",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "These popular destinations have a lot of offers",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (page == Page.HOME)
                      Container(
                        padding: EdgeInsets.only(top: 70),
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ResortsCard(
                              imgPath: "assets/0.jpg",
                              district: "Galle",
                              properties: 17,
                            ),
                            ResortsCard(
                              imgPath: "assets/1.jpg",
                              district: "Ambalangoda",
                              properties: 18,
                            ),
                            ResortsCard(
                              imgPath: "assets/2.jpg",
                              district: "Hikkaduwa",
                              properties: 20,
                            ),
                            ResortsCard(
                              imgPath: "assets/3.jpg",
                              district: "Aluthgama",
                              properties: 15,
                            ),
                            ResortsCard(
                              imgPath: "assets/4.jpg",
                              district: "Kaluthara",
                              properties: 16,
                            ),
                          ],
                        ),
                      ),
                    if (page == Page.HOME)
                      Positioned(
                        child: Text(
                          "Trending Resorts",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        top: 270,
                        left: 20,
                      ),
                    if (page == Page.HOME)
                      Container(
                        padding: EdgeInsets.only(top: 300),
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            TrendingCard(
                              imgPath: "assets/5.jpg",
                              district: "Galle",
                              rating: 4.8,
                              hotelName: "Avendra Garden",
                            ),
                            TrendingCard(
                              imgPath: "assets/intro-3.jpg",
                              district: "Ambalangoda",
                              rating: 4.1,
                              hotelName: "Avendra Garden",
                            ),
                            TrendingCard(
                              imgPath: "assets/leisre land.jpg",
                              district: "Hikkaduwa",
                              rating: 4.7,
                              hotelName: "Avendra Garden",
                            ),
                            TrendingCard(
                              imgPath: "assets/naawa.jpg",
                              district: "Aluthgama",
                              rating: 4.5,
                              hotelName: "Avendra Garden",
                            ),
                            TrendingCard(
                              imgPath: "assets/nirali-resorts.jpg",
                              district: "Kaluthara",
                              rating: 4.2,
                              hotelName: "Nirali Resorts",
                            ),
                          ],
                        ),
                      ),
                    if (page == Page.SEARCH)
                      Positioned(
                        top: 100,
                        left: 30,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Holiday Resort",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                "Write something here if you want",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 120,
                                width: 350,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.limeAccent[700],
                                    width: 5.0,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Enter your destination",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          icon: Image(
                                            fit: BoxFit.fill,
                                            width: 30,
                                            height: 30,
                                            image: AssetImage("assets/bed.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Check in",
                                                  hintStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  icon: Icon(
                                                    Icons.date_range,
                                                    color: Colors.black54,
                                                    size: 26,
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Adult,Child Rooms",
                                                hintStyle: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                icon: Image(
                                                  fit: BoxFit.fill,
                                                  width: 30,
                                                  height: 30,
                                                  image: AssetImage(
                                                      "assets/group.png"),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              FlatButton(
                                  padding:
                                      EdgeInsets.only(left: 135, right: 135),
                                  height: 40,
                                  color: Colors.lightBlueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 20,
                                        width: 20,
                                        image: AssetImage("assets/loupe.png"),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Search",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
