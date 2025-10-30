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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: const Color.fromARGB(255, 228, 64, 14),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'Order Details',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.07,
              left: 0,
              right: 0,
              bottom: -5,
              child: Container(
                height: 150,
                width: 357,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 18),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              'Order No.0095942',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 120),
                            Text(
                              'Active',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 228, 64, 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 25),
                            Text(
                              '30 Oct, 04:25 pm',
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    // السطر الخفيف
                    Container(
                      height: 2,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(76, 241, 56, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.emoji_food_beverage, size: 60),
                        SizedBox(width: 11),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Classic Espresso Coffee',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 47),
                                Text(
                                  '15.00\$',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),
                            Row(
                              children: [
                                Text(
                                  '3 Items',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    // السطر الخفيف
                    Container(
                      height: 2,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(76, 241, 56, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.local_pizza, size: 60),
                        SizedBox(width: 11),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Margherita Pizza',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 95),
                                Text(
                                  '30.00\$',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),
                            Row(
                              children: [
                                Text(
                                  '2 Items "Large" ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    // السطر الخفيف
                    Container(
                      height: 2,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(76, 241, 56, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 180),
                        Text(
                          '35.00\$',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Tax & Fees',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 162),
                        Text(
                          '5.00\$',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Delivery',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 185),
                        Text(
                          '3.00\$',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 2,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(34, 241, 56, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 212),
                        Text(
                          '43.00\$',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 228, 64, 14),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Cancel Order",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 60),
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(104, 255, 86, 34),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Track Driver",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Hope you enjoy every bite!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 228, 64, 14),
                      ),
                    ),
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
