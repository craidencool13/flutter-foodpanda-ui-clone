import 'package:flutter/material.dart';
import '../../models/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;

  ShopCard(this.shop);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .2,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(shop.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'Free Delivery',
                style: TextStyle(
                    backgroundColor: Colors.pink,
                    color: Colors.white,
                    fontSize: 16.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      shop.name,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      shop.address,
                      style: TextStyle(fontSize: 15.0, color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Free Delivery',
                      style: TextStyle(fontSize: 15.0, color: Colors.grey[600]),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                    Text(
                      '4.0',
                    ),
                    Text(
                      '(402)',
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
