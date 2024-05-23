import 'package:flutter/material.dart';

class Fert extends StatefulWidget {
  const Fert({super.key});

  @override
  State<Fert> createState() => _FertState();
}

class _FertState extends State<Fert> {
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
                'Pipe Fertilizer',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 20, right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(44, 44, 44, 100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 120,
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Nitrogen:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '6 Liter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 20, right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(44, 44, 44, 100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 120,
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Phosphor:',
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
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(44, 44, 44, 100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 120,
                    height: 110,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Pottasium:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '4 liter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
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
                width: 370,
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
                width: 370,
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



