import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 219, 190, 224),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(255, 171, 128, 190),
                  child: Icon(Icons.face_2),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 62, 3, 77),
                      ),
                    ),
                    Text(
                      "Eman Ibrahim",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 62, 3, 77),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Center(
              child: Container(
                height: 130,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 155, 92, 192),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color.fromARGB(255, 44, 23, 71),
                    width: 2.5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    Text(
                      "     Your today's tasks",
                      style: TextStyle(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "     almost done!",
                      style: TextStyle(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "   90%",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "View Tasks",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 93, 18, 128),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "      In Progress",
                  style: TextStyle(
                    fontSize: 14.5,
                    color: const Color.fromARGB(255, 62, 3, 77),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  height: 30,
                  width: 25,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(101, 193, 52, 228),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 93, 18, 128),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 7, 32),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 26, 26, 27),
                    width: 2.5,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  Work Task",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(101, 193, 52, 228),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.work, color: Colors.white)],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  Add New Features",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(101, 193, 52, 228),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.add, color: Colors.white)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "      Task Group",
              style: TextStyle(
                fontSize: 14.5,
                color: const Color.fromARGB(255, 62, 3, 77),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 128, 75, 125),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 26, 26, 27),
                    width: 2.5,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(172, 41, 1, 51),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.person_2, color: Colors.white)],
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Personal Task",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(width: 140),
                    Container(
                      height: 30,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(172, 41, 1, 51),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 128, 75, 125),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 26, 26, 27),
                    width: 2.5,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(172, 209, 15, 151),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_filled, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Home Task",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(width: 160),
                    Container(
                      height: 30,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(172, 209, 15, 151),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 128, 75, 125),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 26, 26, 27),
                    width: 2.5,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 34, 7, 32),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.work_rounded, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Work Task",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(width: 168),
                    Container(
                      height: 30,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 34, 7, 32),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 65, 14, 62),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.note_add_outlined, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
