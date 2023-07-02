import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _colorName = 'No';
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 theme: new ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Flutter Circular Menu'),
        ),
        
        body: CircularMenu(
          
          alignment: Alignment.center,
          backgroundWidget: Align(
           alignment: Alignment(0.09, -0.5),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style:
                        TextStyle(color: _color, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' button is clicked.'),
                ],
              ),
            ),
          ),
          toggleButtonColor: Colors.blue,
          items: [
            
            CircularMenuItem(
                icon: Icons.home,
                color: Colors.green,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Home';
                  });
                }),

            CircularMenuItem(
                icon: Icons.search,
                color: Colors.red,
                onTap: () {
                  setState(() {
                    _color = Colors.red;
                    _colorName = 'Search';
                  });
                }),

            CircularMenuItem(
                icon: Icons.settings,
                color: Colors.orange,
                onTap: () {
                  setState(() {
                    _color = Colors.orange;
                    _colorName = 'Setting';
                  });
                }),

            CircularMenuItem(
                icon: Icons.chat,
                color: Colors.purple,
                onTap: () {
                  setState(() {
                    _color = Colors.purple;
                    _colorName = 'Chat';
                  });
                }),

            CircularMenuItem(
                icon: Icons.notifications,
                color: Colors.brown,
                onTap: () {
                  setState(() {
                    _color = Colors.brown;
                    _colorName = 'Notifications';
                  });
                }),

                CircularMenuItem(
                icon: Icons.contact_mail,
                color: Colors.blueAccent,
                onTap: () {
                  setState(() {
                    _color = Colors.blueAccent;
                    _colorName = 'E-mail';
                  });
                }),
               
          ],
        ),
      ),
    );
  }
}
