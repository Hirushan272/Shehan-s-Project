import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String imgPath;
  final String hotelName;
  final String district;
  final double rating;

  const TrendingCard({
    Key key,
    @required this.imgPath,
    @required this.hotelName,
    @required this.district,
    @required this.rating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imgPath,
              height: 100.0,
              width: 150.0,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10),
          Text(
            hotelName,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              SizedBox(width: 5),
              Text(
                "$rating",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(width: 5),
              Text(
                "Good",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          Text(
            district,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
