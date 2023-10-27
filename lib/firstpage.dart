import 'package:flutter/material.dart';
import 'package:assingnment3/signup.dart';
import 'package:assingnment3/loginscreen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  onloginpressed(context) {
    // Navigate to the StartView when the login is successful
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => Loginscreen(),
      ),
    );
  }

  onsignpressed(context) {
    // Navigate to the StartView when the login is successful
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => SignupView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          
          children: [
            
            SizedBox(
              height: 500,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  onloginpressed(context);
                },
                
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Login"),
              ),
            ),



            SizedBox(
              height: 20,
            ),





            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  onsignpressed(context);
                },
                
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Signup"),
              ),
            ),



           
          ],
        ),
      ),
    );
  }
}
