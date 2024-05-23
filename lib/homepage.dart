import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.account_circle,
            size: 45,
          ),
        ),
        backgroundColor: Colors.black,
        title: Center(
          child: Container(
            width: 230,
            height: 55,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(44, 44, 44, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Hello Haza\nYour Farm is ready for Phase III',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_rounded,
              size: 45,
            ),
          )
        ],
        toolbarHeight: 70,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          // height: 1000,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 370, // Set the width of the container
                  height: 80, // Set the height of the container
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.pie_chart,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'On activity:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Drone Fertilizing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(44, 44, 44, 100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 170, // Set the width of the container
                    height: 160, // Set the height of the container
                    child: Center(
                      child: Icon(Icons.speed_sharp, size: 60, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(44, 44, 44, 100),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 186, // Set the width of the container
                        height: 73, // Set the height of the container
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Current Phase:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Vegetatif II',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(44, 44, 44, 100),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 186, // Set the width of the container
                        height: 73, // Set the height of the container
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Next phase:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Vegetatif III',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 370, // Set the width of the container
                  height: 80, // Set the height of the container
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Field Contition:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Good',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 370, // Set the width of the container
                  // height: 280, // Set the height of the container
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(

                            child: Text(
                              'Artificial Intelligence Analysis:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Healty',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Pest Free',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Moisture ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Bad',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    'Modereate',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                          SizedBox(height: 24),
                          Text(
                              'Recommendation:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          SizedBox(height: 12),
                          Container(
                            width: 335,
                            child: Text(
                                'The AI Camera detects a high level of animal pests. We recommend taking immediate action by cleaning it with...',
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                          ),
                          // ,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}