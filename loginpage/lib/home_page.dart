import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  // data pass
  final String username;
  const HomePage({super.key, required this.username}); // constructor

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> data = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Wednesday',
    'Thursday',
    'Friday'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        // child: Center(
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(
        //         context,
        //         MaterialPageRoute(
        //             builder: (BuildContext context) => LoginPage()),
        //         //ModalRoute.withName('/'),
        //       );
        //       //Navigator.pop(context);
        //       //   Navigator.push(context,
        //       //       MaterialPageRoute(builder: (context) => SplashScreen()));
        //     },
        //     child: Text('Log out'),
        //   ),
        // ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Text(
                    'welcome ${widget.username}',
                    style: TextStyle(fontSize: 30),
                  ),
                ), // username get from state class so use wigit in geter
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 3,
                                blurRadius: 3),
                          ]),
                      child: ListTile(
                        leading: Icon(
                          Icons.calendar_today,
                          color: Colors.orange,
                        ),
                        title: Text(
                          data[index],
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          'Days',
                          style: TextStyle(color: Colors.black),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Log out'),
                ),
              ),
            ]),
      ),
    );
  }
}
