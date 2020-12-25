import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StudentLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          dragStartBehavior: DragStartBehavior.down,
          children: [
            DrawerHeader(
              child: Icon(
                Icons.book,
                size: 100,
                color: Colors.redAccent,
              ),
            ),
            ListTile(
              title: Text("Account settings"),
              trailing: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Messages"),
              trailing: Icon(Icons.message),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Routine"),
              trailing: Icon(Icons.calendar_today),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Find teacher"),
              trailing: Icon(Icons.person_add_alt_1_sharp),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Divider(),
                    ListTile(
                      title: Text("Log out"),
                      trailing: Icon(Icons.logout),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Student"),
        elevation: 0,
      ),
      body: Container(
        //height: size.height * 0.3,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Your subjects",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    ScrollComponent(title: "Physics"),
                    ScrollComponent(title: "Chemistry"),
                    ScrollComponent(title: "Math"),
                    ScrollComponent(title: "English"),
                    ScrollComponent(title: "Bangla"),
                    ScrollComponent(title: "ICT"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollComponent extends StatelessWidget {
  const ScrollComponent({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Text(title),
        ),
        height: 50,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

class ParentLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parent"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class TeacherLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teacher"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
