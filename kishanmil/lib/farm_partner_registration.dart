import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kishanmil/farm_partner_login.dart';

class FarmPartnerRegistration extends StatefulWidget {
  @override
  _FarmPartnerRegester createState() => _FarmPartnerRegester();

}

class _FarmPartnerRegester extends State<FarmPartnerRegistration>{
  String _selectGender = 'Male';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Farm Partner Registration'),
      ),

      //Now Create Body Part
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              // Container for Title
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
        
              //Container for top sub title
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
        
              // Space between Title and Inputfield
              SizedBox(
                height: 30,
              ),
        
              // new column for create code for label and user input
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  // Container for name label
                  Container(
                    child: Text('Name *',
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
        
                  //Container for Name textfield
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
        
                  //Space between Name and Skills field
                  SizedBox(
                    height: 20,
                  ),
        
                  //Container for skills label
                  Container(
                    child: Text('Skills *',
                      style: TextStyle(
                          fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                  //Space between label and dropdown
                  SizedBox(
                    height: 10,
                  ),
        
                  //Container for skills input field
                  Container(
                    child: SkillsDropdown(),
                  ),
        
                  //Space between Skills and Mobile number field
                  SizedBox(
                    height: 20,
                  ),
        
                  // Container for Mobile Number label
                  Container(
                    child: Text('Mobile number *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                  //Space between label and inputfield
                  SizedBox(
                    height: 10,
                  ),
        
                  // Container for Mobile number input field
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                  ),
        
                  //Space between Mobile number and Email field
                  SizedBox(
                    height: 20,
                  ),
        
                  // Container for email label
                  Container(
                    child: Text('Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                  //Space between label and input field
                  SizedBox(
                    height: 10,
                  ),
        
                  // Container for email input field
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
        
                  //Space between Email and Gender field
                  SizedBox(
                    height: 20,
                  ),
        
                  // Container for gender label
                  Container(
                    child: Text('Gender',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
        
                  // Row for gender option radio button
        
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
                          }
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
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
        
                    // Others Options
                    Row(
                      children: [
                        Radio<String>(
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
                    )
                  ],
                ),
        
                  // End Of 'Gender' Radio Button
        
                  // Space between 'gender field' && 'Village Name field'
                  SizedBox(
                    height: 20,
                  ),
        
                  // Container for 'Village name' label
                  Container(
                    child: Text('Village name *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
        
                  // Space between label and inputfield
                  SizedBox(
                    height: 10,
                  ),
        
                  // COntainer for village name input field
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your village name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                  ),

                  // Space between 'Village' & 'District' field
                  SizedBox(
                    height: 20,
                  ),

                  // Container for 'District' label
                  Container(
                    child: Text('District *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),

                  // Space between 'label' & textfield
                  SizedBox(
                    height: 10,
                  ),

                  // COntainer for District Input foeld
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your district name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                  ),

                  // Space between 'District field' & 'State field'
                  SizedBox(
                    height: 20,
                  ),

                  // Container for State label
                  Container(
                    child: Text('State *',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),

                  // Space between label and inputfield
                  SizedBox(
                    height: 10,
                  ),

                  // Container for State inputfield
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your state',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        filled: true,
                        fillColor: Colors.white
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

                  // Space between label and input field
                  SizedBox(
                    height: 10,
                  ),

                  // Container for pincode inputfield
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your pincode',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                  ),

                  // Space between 'Pincode field' & 'Term and condition container'
                  SizedBox(
                    height: 20,
                  ),

                  // Start creating of Terms and Conditions Column
                  Column(
                    children: [

                      // First line contain 'By signing up you are agreeing to our'
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('By signing up you are agreeing to our',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
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
                              print('Navigate to Terms and Condition page');
                            },
                            child: Text('Terms and Conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF166119),
                                decoration: TextDecoration.underline
                              ),
                            ),
                          )
                        ],
                      ),

                      // Third line 'Privacy Policy'
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              print('Navigate to privacy polivy page');
                            },
                            child: Text('Privacy Policy',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF166119),
                                decoration: TextDecoration.underline
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                  //END of terms and condition column

                  // Space between 'Terms and condition container' & 'continue button'
                  SizedBox(
                    height: 20,
                  ),

                  // Container of 'Continue' button
                  Center(
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF166119),
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

                  // Space between 'Continue button' & 'Sign in hyperlink'
                  SizedBox(
                    height: 10,
                  ),

                  // Text of 'Sign in hyperlink'
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Already a member ? ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          // Sign hyperlink
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF166119),
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder:
                                  (context) => FarmPartnerLoginPage())
                              );
                              }
                          )
                        ]
                      )
                    ),
                  ),

                  // Create Space after last sign line
                  SizedBox(
                    height: 20,
                  )
                ],


              )
            ],
          ),
        ),
      ),
    );
  }

}

class SkillsDropdown extends StatefulWidget {
  @override
  State<SkillsDropdown> createState() => _SkillsDropdown();
}

class _SkillsDropdown extends State<SkillsDropdown> {
  List<String> skills = ['A', 'B', 'C'];
  String dropdownValue = 'A';  // Default selected value

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
            color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black)
      ),
      child:
        DropdownButton<String>(
          value: dropdownValue,
          isExpanded: true,
          underline: SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: skills.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),

    );
  }
}
