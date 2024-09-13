import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kishanmil/farmer_login.dart';

class FarmerRegisterPage extends StatefulWidget {
  @override
  _FarmerRegisterPageState createState() => _FarmerRegisterPageState();
}

class _FarmerRegisterPageState extends State<FarmerRegisterPage> {
  String _selectGender = 'Male'; // To hold the selected gender value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar title 
      
      appBar: AppBar(
        title: Text('Farmer Register Page'),
      ),

      // Now create body part

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
        
              //Container create top title on screen
        
              Center(
                child: Container(
                  child: Text('Get Started',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF166119)
                    ),
                  ),
                ),
              ),
        
        
              Center(
                child: Container(
                  child: Text('by creating your account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
              ),
        
              // Space between title and 'Name' field
              SizedBox(
                height: 30,
              ),
        
        
              // Create Field for taking user input
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
        
                  // Container 'Name' label
                  Container(
                    child: Text('Name *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                  // Space between label & textfield
                  SizedBox(
                    height: 10,
                  ),
        
                  // Container 'Name TextField'
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                          ),
                          filled: true,
                          fillColor: Colors.white
                        ),
                    ),
                  ),
        
                  // End of Name Input Field
        
        
                  // Space between 'Name field' & 'Mobile Number field'
                  SizedBox(
                    height: 20,
                  ),
        
                  // Container for 'Mobile Number' label
                  Container(
                    child: Text('Mobile number *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                    // Space between label & textfield
                  SizedBox(
                    height: 10,
                  ),
                  
                  // Container for 'Mobile number' textfield
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
                      ),
                    ),
                  ),
        
                  // End of Mobile Number Input Field
        
        
                  // Space between 'Mobile Number field' & 'Email field'
                  SizedBox(
                    height: 20,
                  ),
        
                  // COntainer for 'Email' label
                  Container(
                    child: Text('Email',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),
                    ),
                  ),
        
                  // Space between label & textfield
                  SizedBox(
                    height: 10,
                  ),
        
        
                  // Container for 'Email textfield'
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
                      ),
                    ),
                  ),
        
                  // End of Email Input Field
        
                  // Space between 'Email field' & 'Gender field'
                  SizedBox(
                    height: 20,
                  ),
        
        
                  // Container for 'Gender' label
                  Container(
                    child: Text('Gender',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                  // Row for 'Gender' radio button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Male option
                      Row(
                        children: [
                            Radio<String>(
                              value: 'Male',
                              groupValue: _selectGender,
                              onChanged: (value){
                                setState(() {
                                  _selectGender = value!;
                                });
                              },
                            ),
                          Text('Male',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
        
        
                      //Female option
                      Row(
                          children: [
                            Radio<String>(
                              value: 'Female',
                              groupValue: _selectGender,
                              onChanged: (value){
                                setState(() {
                                  _selectGender = value!;
                                });
                              },
                            ),
                            Text('Female',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                      ),
                      
                      // Others option
                      Row(
                          children: [
                            Radio<String> (
                              value: 'Others',
                              groupValue: _selectGender,
                              onChanged: (value){
                                setState(() {
                                  _selectGender = value!;
                                });
                              },
                            ),
                            Text('Others',
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
                          ],
                      ),
                    ],
                  ),
        
                  // END of 'Gender' radio button
        
                  //Space between 'Gender field' & 'Referral Code field'
                  SizedBox(
                    height: 20,
                  ),
        
        
                  //Container for 'Referral' label
                  Container(
                    child: Text('Referral Code',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
        
                  // Space between label & textfield
                  SizedBox(
                    height: 10,
                  ),
        
        
                  // Container for 'Referral Code' textfield
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Referral Code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
                      ),
                    ),
                  ),


                  // Space between 'Referral field' & 'Term and condition container'
                  SizedBox(
                    height: 20,
                  ),
                  
                  // Start of Terms and Conditions Text

                  Column(
                      children: [


                        // First line contain 'By signing up you are agreeing to our'
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('By signing up you are agreeing to our',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),

                        // Second Line Terms and Conditions Hyperlink
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                print('Navigate to Destination');
                              },
                              child: Text('Terms and Conditions',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF166119),
                                    decoration: TextDecoration.underline,
                                ),

                              ),
                            ),
                          ],
                        ),

                        // Third line 'Privacy Policy'
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                print('Navigate to privacy policy page.');
                              },
                              child: Text('Privacy Policy',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF166119),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  
                  // End of 'Term and condition container'
                  
                  // Space between 'Terms and condition container' & 'continue button'
                  SizedBox(
                    height: 20,
                  ),
                  
                  
                  // Container of 'Continue' button
                  Center(
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF166119), // Green Background Color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 15,
                        ),
                      ),
                        child: Text('Continue',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                    ),
                  ),

                  // END of 'Continue' elevated button

                  // Space between 'Continue button' & 'Sign in hyperlink'
                  SizedBox(
                    height: 20,
                  ),

                  // Text of 'Sign in hyperlink'
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Alredy a member ? ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          // Sign in Hyperlink
                          TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xFF166119),
                                decoration: TextDecoration.underline
                              ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(context,
                                MaterialPageRoute(builder:
                                (context) => farmerloginpage())
                                );
                              }
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}