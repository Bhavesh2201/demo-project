import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NewTab extends StatefulWidget {
  const NewTab({Key? key}) : super(key: key);

  @override
  _NewTabState createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Pantry'),
    Text('Home'),
    Text('Favorite'),
    Text('Shopping')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   items: <Widget>[
      //     Icon(Icons.add, size: 30),
      //     Icon(Icons.add, size: 30),
      //     Icon(Icons.add, size: 30)
      //   ],
      //   color: Colors.blue,
      //   backgroundColor: Colors.white,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey[300],
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.orange[300]),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Pantry',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[600],
        onTap: _onItemTapped,
      ),
    );
  }
}
