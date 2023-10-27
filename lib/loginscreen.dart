import 'package:flutter/material.dart';
import 'package:assingnment3/home.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  onloginpressed(BuildContext context, TextEditingController memail,
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
          builder: (BuildContext context) => HomeView(),
        ),
      );
    } else {
      print("Incorrect Email");
    }

    memail.text = "";
    password.text = "";
  }

  //   Navigator.pushReplacement(context,
  //       MaterialPageRoute(builder: (BuildContext context) => StartView()));
  // }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text(
            "Welcome!",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
          SizedBox(
            height: 50,
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
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                onloginpressed(context, emailController, passwordController);
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
