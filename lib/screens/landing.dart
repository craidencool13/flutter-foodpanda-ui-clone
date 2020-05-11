import 'package:flutter/material.dart';

import '../models/shop.dart';

import '../components/shops/shopcard.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentIndex = 0;
  List<Shop> shops = [
    Shop(
      id: 1,
      name: 'Jollibee',
      address: 'Sta Lucia, Pasig City, Metro Manila',
      image:
          'https://assets.rappler.com/612F469A6EA84F6BAE882D2B94A4B421/img/3B4B117694CB42ECA2D2AFDBD7CD117C/jollibee-manhattan--6_3B4B117694CB42ECA2D2AFDBD7CD117C.jpg',
      isFeatured: true,
      isClosed: true,
      openingTime: 'Mon, 10:00 AM',
    ),
    Shop(
      id: 2,
      name: 'McDonalds',
      address: 'Sta Lucia, Pasig City, Metro Manila',
      image:
          'https://www.mcdelivery.com.ph/uploads/images//Expanded_Menu660x500.jpg',
      isFeatured: false,
      isClosed: false,
      openingTime: 'Mon, 10:00 AM',
    ),
    Shop(
      id: 3,
      name: 'Jollibee',
      address: 'Sta Lucia, Pasig City, Metro Manila',
      image:
          'https://assets.rappler.com/612F469A6EA84F6BAE882D2B94A4B421/img/48C62896A45B47CAADB8124477BDB9D3/mang-inasal-20200331.jpg',
      isFeatured: false,
      isClosed: true,
      openingTime: 'Mon, 10:00 AM',
    ),
    Shop(
      id: 4,
      name: "Wendy's",
      address: 'Sta Lucia, Pasig City, Metro Manila',
      image:
          'https://images2.minutemediacdn.com/image/fetch/w_736,h_485,c_fill,g_auto,f_auto/https%3A%2F%2Fguiltyeats.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2016%2F04%2F483677124-850x560.jpeg',
      isFeatured: false,
      isClosed: false,
      openingTime: 'Mon, 10:00 AM',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, length: 2, initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.pink,
          ),
          onPressed: null,
        ),
        centerTitle: true,
        title: Row(
          children: <Widget>[
            Text(
              'Dilevery to: ',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Home',
              style: TextStyle(color: Colors.pink),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.pink,
            ),
            onPressed: null,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: TabBar(
                indicatorColor: Colors.pink,
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.black,
                tabs: <Tab>[
                  Tab(
                    child: Center(
                      child: Text('DELIVERY'),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text('PICK-UP'),
                    ),
                  ),
                ],
                // setup the controller
                controller: _tabController,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 3,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter a search term',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                    suffixIcon: Icon(Icons.graphic_eq, color: Colors.pink),
                    border: InputBorder.none),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: shops.map((shop) => ShopCard(shop)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
