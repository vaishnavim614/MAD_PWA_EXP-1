import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: HomePage()
      )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key ? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Learning App",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Welcome",
          style: TextStyle(
            fontSize:30 ,
            fontFamily: 'Protest',
          ),

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle onTap for BottomNavigationBar
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      persistentFooterButtons: [
        FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Hello Vaishnavi!!!'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: Icon(Icons.info),
        ),
      ],
    );


  }
}