import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class farmerloginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Farmer Login Page'),
        ),
        body: Stack(

          children: [
            Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // Aligns content to the center horizontally
                children: [

                  // Welcome text
                  Container(
                    margin: EdgeInsets.only(top: 80), // Adjust the top margin as needed
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF166119), // Green color
                      ),
                    ),
                  ),
                  // SizedBox(height: 5), // Space between texts
                  Text(
                    "you have been missed",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 60), // Space before the input field

                  // Textfield Mobile number of user
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile Number *',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30), // Space before the button

                  // Continue button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF166119),
                      // Green background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(30), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 20), // Padding inside the button
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Space before the register text

                  // New User Member Register
                  Text.rich(
                    TextSpan(
                      text: 'Are you a new member? ',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Register now',
                          style: TextStyle(
                            color: Color(0xFF166119),
                            // Green color for hyperlink
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration
                                .underline, // Underline for hyperlink style
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Navigate to register page");
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}