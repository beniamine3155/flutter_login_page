import 'package:flutter/material.dart';
import 'package:flutter_login_page/my_textField.dart';
import 'package:flutter_login_page/mybutton.dart';
import 'package:flutter_login_page/squareTile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final PasswordController = TextEditingController();

  void userSignIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: PasswordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const MyButton(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTile(imagePath: 'lib/images/facebook.png'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
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
