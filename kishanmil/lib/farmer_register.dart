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

                  // Space between Name and Landsize filled
                  SizedBox(
                    height: 20,
                  ),

                  //Container 'LandSize' label
                  Container(
                    child: Text('Landsize *',
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

                      // Container landsize textfield and dropdown landsize units
                      Row(
                        children: [
                          // Container for Landsize input filled
                          Expanded(
                            flex: 2,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter your landsize',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                  filled: true,
                                  fillColor: Colors.white
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 20,
                          ),


                          Expanded(
                            flex: 1,
                              child: LandsizeUnitsDropdown()
                          ),
                        ],
                      ),

                  // Space between 'Name field' & 'Mobile Number field'
                  SizedBox(
                    height: 20,
                  ),

                  // Container for Water Availbility label

                  Container(
                    child: Text('Water availability *',
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
                  // Container for water availablity dropdown
                  Container(
                    child: WaterAvailability(),
                  ),

                  // Space between Water availablity and mobile number field
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
        
                  //Space between 'Gender field' & 'Village name Code field'
                  SizedBox(
                    height: 20,
                  ),
        
        
                  //Container for 'Village name' label
                  Container(
                    child: Text('Village name *',
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
        
        
                  // Container for 'village name' textfield
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter village name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
                      ),
                    ),
                  ),

                  // Space between 'Village name field' & 'Term and District name field'
                  SizedBox(
                    height: 20,
                  ),


                  // Container for District name field

                  Container(
                    child: Text('District *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),

                  // Space between label and input field
                  SizedBox(
                    height: 10,
                  ),

                  //Container for District name input field
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your district',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
                      ),
                    ),
                  ),

                  // Space between District and State field
                  SizedBox(
                    height: 20,
                  ),

                  // Container for State field
                  Container(
                    child: Text('State *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),

                  // Space between label and textfield
                  SizedBox(
                    height: 10,
                  ),

                  // Container for State input field
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your state',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                  ),

                  //Space between State and Pincode field
                  SizedBox(
                    height: 20,
                  ),

                  // Container for pincode label
                  Container(
                    child: Text('Pincode *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),

                  //Space between label and textfield
                  SizedBox(
                    height: 10,
                  ),


                  // Container for pincode textfield
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter pincode',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
                      ),
                    ),
                  ),

                  // Space between 'Pincode field' & 'Term and condition container'
                  SizedBox(
                    height: 20,
                  ),
                  
                  // Start creating of Terms and Conditions Text

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

                  // Create Space after last sign line
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}


class LandsizeUnitsDropdown extends StatefulWidget {

  @override
  State<LandsizeUnitsDropdown> createState() => _LandsizeUnitsDropdown();
}

class _LandsizeUnitsDropdown extends State<LandsizeUnitsDropdown> {
  List<String> unitsList = ['Bigha', 'Acre'];
  String dropDown = 'Bigha';  // Default selected value

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),  // Padding inside the dropdown
      decoration: BoxDecoration(
        color: Colors.white,  // Background color
        borderRadius: BorderRadius.circular(25), // Circular border radius
        border: Border.all(color: Colors.black),  // Black border
      ),
      child: DropdownButton<String>(
        value: dropDown,  // The current selected value
        isExpanded: true,  // Make the dropdown take full width
        underline: SizedBox(),  // Remove the default underline
        onChanged: (String? newValue) {  // When a new item is selected
          setState(() {
            dropDown = newValue!;  // Update the selected value
          });
        },
        items: unitsList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),  // Convert list of items into dropdown menu items
      ),
    );
  }
}


class WaterAvailability extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WaterAvailability();

}

class _WaterAvailability extends State<WaterAvailability>{

  List<String> waterSurce = ['Kuan', 'Boring', 'Baarish'];
  String source = 'Kuan';
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.black,
            )
          ),
      child: DropdownButton<String>(
          value: source,
          isExpanded: true,
          underline: SizedBox(),
          onChanged: (String? newValue){
            setState(() {
              source = newValue!;
            });
          },
          items: waterSurce.map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
            );
          }).toList(),
      ),
    );
  }

}