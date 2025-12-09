import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff224271),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(child: Image.asset('assets/133870803258433233.jpg')),
              Positioned(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(
                      'assets/WhatsApp Image 2024-02-20 at 23.43.44_01fca7d1.jpg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Menna Elnaggar',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'moblile developer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 10),
          Text(
            'san fransisco, CA',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(26),
            width: 400,
            decoration: BoxDecoration(
              color: Color(0xffD3EDFA),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 20),
                Text('mennaelnaggar2021@gmail.com'),
              ],
            ),
          ),
          Divider(thickness: 1, indent: 20, endIndent: 20),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Account Settings'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.notification_add),
                    title: Text(' Notifications'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
