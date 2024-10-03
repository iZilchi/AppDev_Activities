import 'package:flutter/material.dart';

void main() {
  runApp(CvApp());
}

class CvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CvHomePage(),
    );
  }
}

class CvHomePage extends StatefulWidget {
  @override
  _CvHomePageState createState() => _CvHomePageState();
}

class _CvHomePageState extends State<CvHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My CV"),
        backgroundColor: Colors.red,
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildProfileSection(),
            const SizedBox(height: 20),
            _buildProfessionalGoalBox(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                'CV Sections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Education'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Skills'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Projects'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Work Experience'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/profile_picture.jpg'),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            'Kent Melard D. Pagcaliuangan',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            'Front-End Developer',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600],
            ),
          ),
        ),
        Center(
          child: Text(
            '0955 0955 185',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ),
        Center(
          child: Text(
            'ytzilchi@gmail.com',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfessionalGoalBox() {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'Professional Goal',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
