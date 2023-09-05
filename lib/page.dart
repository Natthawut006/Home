import 'package:flutter/material.dart';

class page extends StatelessWidget {
  final List<String> imageUrls = [
    "https://scontent.furt2-1.fna.fbcdn.net/v/t39.30808-6/358602727_324065286613263_5723045456938911602_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFGd_PRcCTuaxtq6D-xqMctk8NYJ10QnEiTw1gnXRCcSB58qkq4No-vmW4QN3ntZQpFzXwwHHEKRFpJxBsKNaU2&_nc_ohc=g8WNvql3vmQAX8PB_4F&_nc_ht=scontent.furt2-1.fna&oh=00_AfDp7I5J8tAh1E8npfTWOQlgs5fffrR9E-EdL-sQdoT3XA&oe=64F4C0B9",
//                   fit: BoxFit.cover,
    "https://scontent.furt2-1.fna.fbcdn.net/v/t39.30808-6/358430261_324065413279917_5306685805344955160_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFBEBo9oK22gNsp8pmmPbnEZvHKT9bKoLxm8cpP1sqgvPlT5BIOERIun2EEhN8X9QzZLo8Rgro8jDljtcjHj6LX&_nc_ohc=6CzdO-vXGPcAX88n__Q&_nc_ht=scontent.furt2-1.fna&oh=00_AfAoTEeTsJhEdo74akWtAmTU_D8XjgypSQMmzwyynM1-og&oe=64F41CB7",
//                   fit: BoxFit.cover,
    "https://scontent.furt2-1.fna.fbcdn.net/v/t39.30808-6/358407696_324065293279929_1188842467835811940_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHQ5WAIkMCt4woddqQh-IkCavttm81pCLRq-22bzWkItEYBAhrv1cCznng-svXZgGSeGtJS2lDzvTX4mBDWRi_1&_nc_ohc=YjNDs_H8xygAX8jNw4i&_nc_ht=scontent.furt2-1.fna&oh=00_AfDA4baHFi42_EPzwkh7nMuxE0qRsyK4H3d9xUHvZhN8BQ&oe=64F342D0",
//                   fit: BoxFit.cover,
    // "https://example.com/image4.jpg",
  ];

  page({Key? key});

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
        color: Color.fromARGB(255, 234, 220, 236),// Set your desired background color
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
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Card(
                        elevation: 4,
                        child: Image.network(
                          imageUrls[index],
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
                    image: NetworkImage(
                        "https://scontent.furt2-1.fna.fbcdn.net/v/t39.30808-6/358602727_324065286613263_5723045456938911602_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFGd_PRcCTuaxtq6D-xqMctk8NYJ10QnEiTw1gnXRCcSB58qkq4No-vmW4QN3ntZQpFzXwwHHEKRFpJxBsKNaU2&_nc_ohc=g8WNvql3vmQAX8PB_4F&_nc_ht=scontent.furt2-1.fna&oh=00_AfDp7I5J8tAh1E8npfTWOQlgs5fffrR9E-EdL-sQdoT3XA&oe=64F4C0B9"),
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
                    image: NetworkImage(
                        "https://scontent.furt2-1.fna.fbcdn.net/v/t39.30808-6/358430261_324065413279917_5306685805344955160_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFBEBo9oK22gNsp8pmmPbnEZvHKT9bKoLxm8cpP1sqgvPlT5BIOERIun2EEhN8X9QzZLo8Rgro8jDljtcjHj6LX&_nc_ohc=6CzdO-vXGPcAX88n__Q&_nc_ht=scontent.furt2-1.fna&oh=00_AfAoTEeTsJhEdo74akWtAmTU_D8XjgypSQMmzwyynM1-og&oe=64F41CB7"),
                  ),
                ),
              ),
              title: const Text("Social Media"),
              subtitle: const Text("Social Media Social Media Social Media Social Media.. ",style: TextStyle(
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
                    image: NetworkImage(
                        "https://scontent.furt2-1.fna.fbcdn.net/v/t39.30808-6/358407696_324065293279929_1188842467835811940_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHQ5WAIkMCt4woddqQh-IkCavttm81pCLRq-22bzWkItEYBAhrv1cCznng-svXZgGSeGtJS2lDzvTX4mBDWRi_1&_nc_ohc=YjNDs_H8xygAX8jNw4i&_nc_ht=scontent.furt2-1.fna&oh=00_AfDA4baHFi42_EPzwkh7nMuxE0qRsyK4H3d9xUHvZhN8BQ&oe=64F342D0",),
                  ),
                ),
              ),
              title: const Text("Social Media"),
              subtitle: const Text("Social Media Social Media Social Media Social Media.. ",style: TextStyle(
      color: Color.fromARGB(148, 0, 0, 0),),),
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
  runApp(MaterialApp(home: page()));
}
