import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class DronePage extends StatefulWidget {
  const DronePage({Key? key});

  @override
  State<DronePage> createState() => _DronePageState();
}

class _DronePageState extends State<DronePage> {
  int dronePower = 0; // Changed to int and initialized with 0
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();
    _initializeFirebase();
    _fetchDronePower();
  }

  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  Future<void> _fetchDronePower() async {
    final snapshot = await _databaseRef.child('pompa3').get();
    if (snapshot.exists) {
      setState(() {
        dronePower = snapshot.value as int; // Changed to int
      });
    }
  }

  Future<void> _updateDronePower(int value) async {
    await _databaseRef.child('pompa3').set(value);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            
            height: 55,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(44, 44, 44, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Drone Fertilizer',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
        
        // toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                  width: 360,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.battery_charging_full,
                        size: 50,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Battery Level:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '80%',
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
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 360,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.storage,
                        size: 50,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Capacity Available:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '12 Liters',
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
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 360,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 50,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Flight Time:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '2 Hours',
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
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(44, 44, 44, 100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 360,
                  height: 50,
                  child: const Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                            'Control Drone',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                        Icons.arrow_right,
                        size: 30,
                        color: Colors.white,
                      ),
                      
                      
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 0),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(44, 44, 44, 100),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 360,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Drone power ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Switch(
                      value: dronePower == 1, // Check if dronePower is 1 for ON
                      onChanged: (bool value) {
                        // Memperbarui state berdasarkan nilai yang baru
                        setState(() {
                          dronePower = value ? 1 : 0; // Convert bool to int
                          _updateDronePower(dronePower);
                        });
                      },
                    )
                  ],
                ),
              ),
              // const SizedBox(height: 20),
              // const Text(
              //   'Fertilizer Capacity',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 18,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       margin: const EdgeInsets.only(bottom: 10, top: 20, right: 10),
              //       padding: const EdgeInsets.all(10),
              //       decoration: BoxDecoration(
              //         color: const Color.fromRGBO(44, 44, 44, 100),
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       width: 120,
              //       height: 110,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: const [
              //           Text(
              //             'Battery Level:',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 14,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           Text(
              //             '80%',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 35,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       margin: const EdgeInsets.only(bottom: 10, top: 20, right: 10),
              //       padding: const EdgeInsets.all(10),
              //       decoration: BoxDecoration(
              //         color: const Color.fromRGBO(44, 44, 44, 100),
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       width: 120,
              //       height: 110,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: const [
              //           Text(
              //             'Capacity:',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 14,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           Text(
              //             '12 Liters',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       margin: const EdgeInsets.only(bottom: 10, top: 20),
              //       padding: const EdgeInsets.all(10),
              //       decoration: BoxDecoration(
              //         color: const Color.fromRGBO(44, 44, 44, 100),
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       width: 120,
              //       height: 110,
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: const [
              //           Text(
              //             'Flight Time:',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 14,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //           Text(
              //             '2 Hours',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 10),
              const Text(
                'Progress',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 360,
                height: 20,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(44, 44, 44, 100),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: SizedBox(
                      height: 20,
                      child: ColoredBox(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 360,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(44, 44, 44, 100),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Map Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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



