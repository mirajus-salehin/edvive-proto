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
      body: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size.width,
            //height: size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your subjects",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ScrollComponent(title: "Physics"),
                      ScrollComponent(title: "Physics"),
                      ScrollComponent(title: "Physics"),
                      ScrollComponent(title: "Physics"),
                      ScrollComponent(title: "Physics"),
                      ScrollComponent(title: "Physics"),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Achievments",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.redAccent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                            right: 2,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Container(
                            width: size.width * 0.5,
                            height: size.height * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: Icon(Icons.done_all),
                                  title: Text("First assignment"),
                                  subtitle:
                                      Text("Completed with excelent result"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                            right: 2,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Container(
                            width: size.width * 0.5,
                            height: size.height * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: Icon(Icons.done_all),
                                  title: Text("First assignment"),
                                  subtitle:
                                      Text("Completed with excelent result"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                            right: 2,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Container(
                            width: size.width * 0.5,
                            height: size.height * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  leading: Icon(Icons.done_all),
                                  title: Text("First assignment"),
                                  subtitle:
                                      Text("Completed with excelent result"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Current teachers",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    height: size.height,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ScrollComponent(
                            title: "John Doe",
                            color: Colors.redAccent,
                            textColor: Colors.white,
                          ),
                          ScrollComponent(
                            title: "John Doe",
                            color: Colors.redAccent,
                            textColor: Colors.white,
                          ),
                          ScrollComponent(
                            title: "John Doe",
                            color: Colors.redAccent,
                            textColor: Colors.white,
                          ),
                          ScrollComponent(
                            title: "John Doe",
                            color: Colors.redAccent,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ScrollComponent extends StatelessWidget {
  const ScrollComponent(
      {Key key,
      this.title,
      this.color = Colors.white,
      this.textColor = Colors.black})
      : super(key: key);
  final String title;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
        height: 50,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: color,
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
