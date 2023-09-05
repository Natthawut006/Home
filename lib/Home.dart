import 'package:flutter/material.dart';

class newpage1 extends StatelessWidget {
  final List<String> imageAssetPaths = [
    "picture1/pic1.png",
    "picture1/pic2.png",
    "picture1/pic3.png",
    // เพิ่มรูปภาพเพิ่มเติมตามที่คุณต้องการ
  ];

  newpage1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.menu),
            SizedBox(width: 8),
            Text(
              "HOME",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Spacer(),
            Icon(Icons.account_circle),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 234, 220, 236), // Set your desired background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 255, 255, 255), // Set your desired background color
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Lasted News",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "see more >",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageAssetPaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Card(
                        elevation: 4,
                        child: Image.asset(
                          imageAssetPaths[index],
                          height: 150,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Popular News",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "see more >",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: Container(
                width: 90,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("picture1/pic1.png"),
                  ),
                ),
              ),
              title: const Text("Social Media"),
              subtitle: const Text("Social Media Social Media Social Media Social Media.. ", style: TextStyle(
                color: Color.fromARGB(148, 0, 0, 0), // Set your desired subtitle color
              ),
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: Container(
                width: 90,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("picture1/pic2.png"),
                  ),
                ),
              ),
              title: const Text("Social Media"),
              subtitle: const Text("Social Media Social Media Social Media Social Media.. ", style: TextStyle(
                color: Color.fromARGB(148, 0, 0, 0),
              ),
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: Container(
                width: 90,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("picture1/pic3.png"),
                  ),
                ),
              ),
              title: const Text("Social Media"),
              subtitle: const Text("Social Media Social Media Social Media Social Media.. ", style: TextStyle(
                color: Color.fromARGB(148, 0, 0, 0),
              ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 193, 157, 199), // Set your desired background color
        selectedItemColor: Color.fromARGB(255, 199, 29, 176), // Set your desired selected icon color
        unselectedItemColor: Color.fromARGB(255, 173, 99, 163), // Set your desired unselected icon color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public_off_outlined),
            label: 'Cirriculums',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_outlined),
            label: 'contact',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: newpage1()));
}
