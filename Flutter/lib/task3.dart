import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: const Color.fromARGB(255, 255, 203, 221),
                    child: Icon(
                      Icons.face_3_outlined,
                      size: 43,
                      color: const Color.fromARGB(255, 194, 22, 122),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'User full Name',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 194, 22, 122),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.person_outlined, color: Colors.black, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 25),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'My Orders',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 25),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.favorite_border, color: Colors.black, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'My Favorites',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 25),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.settings, color: Colors.black, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 25),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color.fromARGB(255, 194, 22, 122),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.logout_outlined, color: Colors.black, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 194, 22, 122),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: const Color.fromARGB(255, 194, 22, 122),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: "Items",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
