import 'package:flutter/material.dart';
import 'package:kishanmil/farmer_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isFarmerPressed = false;
  bool _isPartnerPressed = false;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Stack(
          children: [
            // Background Image at the bottom
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/images/kisanmel photo jpg.jpg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height, // Adjust the height as per your need
              ),
            ),

            // Your main content
            Container(
              margin: EdgeInsets.only(top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo for Kishan Mel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        child: Image.asset("assets/images/KISANMEL LOGO BLACK.png"),
                      )
                    ],
                  ),

                  SizedBox(height: 45),

                  // Button for farmer login
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          width: 200,
                          child: OutlinedButton(
                            onPressed: () {
                              setState(() {
                                _isFarmerPressed = true; // Set pressed state
                              });

                              // Navigate to the login page and reset button state when returning
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return farmerloginpage();
                                  })).then((value) {
                                setState(() {
                                  _isFarmerPressed = false; // Reset pressed state when coming back
                                });
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: _isFarmerPressed
                                  ? Color(0xFF166119) // Green color when pressed
                                  : Colors.transparent, // Transparent when not pressed
                              side: BorderSide(
                                color: _isFarmerPressed
                                    ? Colors.transparent
                                    : Colors.black,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Text(
                              "Farmer Login",
                              style: TextStyle(
                                color: _isFarmerPressed
                                    ? Colors.white // White text when pressed
                                    : Colors.black, // Black text when not pressed
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Button for farm partner login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: 200,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              _isPartnerPressed = true;  // Set pressed state for Farm-Partner
                            });

                            // Reset button state after a short delay
                            Future.delayed(Duration(milliseconds: 100), () {
                              setState(() {
                                _isPartnerPressed = false;  // Reset pressed state after delay
                              });
                            });

                            print("Navigate to Farm Partner destination page");
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: _isPartnerPressed
                                ? Color(0xFF166119) // Green color when pressed
                                : Colors.transparent, // Transparent when not pressed
                            side: BorderSide(
                              color: _isPartnerPressed
                                  ? Colors.transparent
                                  : Colors.black,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Farm-Partner",
                            style: TextStyle(
                              color: _isPartnerPressed
                                  ? Colors.white // White text when pressed
                                  : Colors.black, // Black text when not pressed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
