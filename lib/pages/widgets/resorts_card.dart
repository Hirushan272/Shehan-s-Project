import 'package:flutter/material.dart';

class ResortsCard extends StatelessWidget {
  final String imgPath;
  final String district;
  final int properties;

  const ResortsCard({
    Key key,
    @required this.imgPath,
    @required this.district,
    @required this.properties,
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
              height: 120.0,
              width: 150.0,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10),
          Text(
            district,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "$properties Properties",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
