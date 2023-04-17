import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                color: Color.fromARGB(255, 245, 224, 231),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/6/6f/Burleigh_Heads%2C_Australia_%28Unsplash%29.jpg')),
                          Text('Find Flames',
                              style: TextStyle(
                                  color: Colors.pinkAccent, fontSize: 20)),
                          ImageIcon(AssetImage('assets/images/Vector.png')),
                          //     Icon(
                          //        ImageIcon(
                          //  AssetImage('assets/images/vector(2).png'),
                          //      ),
                          //       color: Colors.deepPurpleAccent,
                          //       size: 24.0,
                          //     ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 85.0,
                                  height: 98.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'assets/images/asset1.png',
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 85.0,
                                  height: 98.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'assets/images/asset2.png',
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 85.0,
                                  height: 98.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'assets/images/asset3.png',
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 85.0,
                                  height: 98.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'assets/images/asset3.png',
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 85.0,
                                  height: 98.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'assets/images/Rectangle 459.png',
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, left: 40.0, right: 40.0),
                      child: TextField(
                        style: TextStyle(fontSize: 18.0),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search_outlined),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          labelText: 'Search',
                        ),
                      ),
                    ),
                    Container(
                        width: 420.0,
                        height: 541.0,
                        color: Colors.white,
                        child: ListView(shrinkWrap: true, children: const [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/Ellipse 121.png'),
                            ),
                            title: Text(
                              'Jordan',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            subtitle: Text('Hii!'),
                            trailing: Text(
                              '13:10',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/Ellipse 122.png'),
                            ),
                            title: Text(
                              'Tim',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            subtitle: Text('Hii!'),
                            trailing: Text(
                              '13:10',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/Ellipse 121 (1).png'),
                            ),
                            title: Text(
                              'James',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            subtitle: Text(
                              'Typing...',
                              style: TextStyle(color: Colors.pinkAccent),
                            ),
                            trailing: Text(
                              '13:10',
                              style: TextStyle(fontSize: 12.0),
                            ),
                          )
                        ]))
                  ],
                )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/Vector2.png')),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://cdn.iconscout.com/icon/premium/png-128-thumb/explore-global-mgnifier-network-search-32630.png'),
                color: Colors.black,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.black,
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 205, 94, 131),
          onTap: _onItemTapped,
        ));
  }
}
