import 'package:flutter/material.dart';
import 'package:assingnment3/start.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});





  onsignuppressed(BuildContext context, TextEditingController memail,
      TextEditingController password) {
    String email = memail.text;
    if (email.contains("@") && email.contains(".com")) {
      print("Correct Email");
      print("Email: ${memail.text}");
      print("Password: ${password.text}");

      // Navigate to the StartView when the login is successful
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => StartView(),
        ),
      );
    } else {
      print("Incorrect Email");
    }

    memail.text = "";
    password.text = "";
  }

  

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          SizedBox(
            height: 70,
          ),
          Text(
            "Sign Up",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
          Text(
            "Creat New Account",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 90,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "User Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              hintText: "Email Address",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
              hintText: "Password",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
              hintText: "Confirm Password",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                onsignuppressed(context, emailController, passwordController,
                    );
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              child: const Text("Login"),
            ),
          ),
        ]),
      ),
    );
  }
}
