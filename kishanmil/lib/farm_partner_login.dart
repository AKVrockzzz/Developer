import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kishanmil/farm_partner_registration.dart';

class FarmPartnerLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farm-Partner Login "),
      ),
      
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                // Container for Welcome Title
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    child: Text('Welcome Partners',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF166119)
                      ),
                    ),
                  ),
                ),
        
                // Container for Welcome Subtitle
                Center(
                  child: Container(
                    child: Text('you have been missed',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
        
                //Space Between title and mobile field
        
                SizedBox(
                  height: 60,
                ),
        
                //Container for mobile number label
        
                Container(
                  child: Text('Mobile Number *',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                  ),
                ),
        
        
                // Space between label and textfield
                SizedBox(
                  height: 10,
                ),
        
                //Container for mobile number input field
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      fillColor: Colors.white,
                      filled: true
                    ),
                  ),
                ),
        
                //Space between mobile number field and continue button
        
                SizedBox(
                  height: 20,
                ),
                // Button for continue after input number
                Center(
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF166119),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 15
                      )
                    ),
        
                      child: Text('Continue',
                        style:  TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                  ),
                ),
        
                //Space between button and new partner register text
                SizedBox(
                  height: 20,
                ),
        
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Are you a new partner? ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: 'Register Now',
                          style: TextStyle(
                            color: Color(0xFF166119),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                    FarmPartnerRegistration())
                                );
                            }
                        )
                      ]
                    ),
        
                  ),
                ),
        
            ]
            ),
        ),
      ),

    );
  }
  
}