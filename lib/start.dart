import 'package:flutter/material.dart';
import 'package:assingnment3/home.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  onloginpressed(
    BuildContext context,
  ) {
    // String email = memail.text;

    // Navigate to the StartView when the login is successful
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => HomeView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Successful!",
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
            Text(
              "You Have Successfully Registered In Our App and Start Working In It",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
            const SizedBox(
              height: 450,
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
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Start Shopping"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
