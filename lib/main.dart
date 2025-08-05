import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Century Gothic"),
      title: "Digital ID Card",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(179, 247, 232, 232),
      appBar: AppBar(
        title: Text(
          "Digital ID Card",
          style: TextStyle(color: Color.fromARGB(128, 0, 0, 0)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFDEE8CE),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 380, minHeight: 450),
          child: Card(
            elevation: 14,
            color: Color(0xFFFFF8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.orange, width: 6),
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),

                  Text(
                    "Sushmoy Malakar",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 160, 66, 12),
                    ),
                  ),
                  Text(
                    "Batch: 61D, Department of CSE",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.badge_outlined, color: Colors.black54),
                    title: Text("ID: 0182310012101164"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined, color: Colors.black54),
                    title: Text("Email: weirdobing@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone_android_outlined,
                      color: Colors.black54,
                    ),
                    title: Text("Phone: +8801637500147"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
