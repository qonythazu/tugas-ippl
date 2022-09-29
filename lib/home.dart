import 'package:anuy/pilihpesanan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text('Index 1: Business'),
    Text(
      'Index 2: School',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PilihPesanan(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xffD9534F),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Belum Dikerjakan",
                style: TextStyle(color: Color(0xffD9534F)),
              ),
            ),
            Divider(
              color: Color(0xffD9534F),
            ),
            Container(
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User A", style: TextStyle(color: Colors.white)),
                            Text("Kemeja", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffD9534F),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User B", style: TextStyle(color: Colors.white)),
                            Text("Celana", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff96CEB4),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User C", style: TextStyle(color: Colors.white)),
                            Text("Celana", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFAD60),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
              child: Text(
                "Sedang Dikerjakan",
                style: TextStyle(color: Color(0xff96CEB4)),
              ),
            ),
            Container(
              child: Divider(
                color: Color(0xff96CEB4),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 20),
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User D", style: TextStyle(color: Colors.white)),
                            Text("Kemeja", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff96CEB4),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User E", style: TextStyle(color: Colors.white)),
                            Text("Kemeja", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFAD60),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0)
                          )
                        ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User F", style: TextStyle(color: Colors.white)),
                            Text("Celana", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffD9534F),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
              child: Text(
                "Siap Diambil",
                style: TextStyle(color: Color(0xffFFAD60)),
              ),
            ),
            Container(
              child: Divider(
                color: Color(0xffFFAD60),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 20),
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User G", style: TextStyle(color: Colors.white)),
                            Text("Celana", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFAD60),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0)
                          )
                        ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User H", style: TextStyle(color: Colors.white)),
                            Text("Kemeja", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffD9534F),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User I", style: TextStyle(color: Colors.white)),
                            Text("Celana", style: TextStyle(color: Colors.white)),
                            Text("08xx-xxxx-67xx",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff96CEB4),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_timeline),
            label: 'Pemasukan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: null,
      ),
    );
  }
}
