import 'package:first/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "passiword",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                onPressed: () => {
                  Navigator.pushNamed(context, MyRoutes.homeRoute),
                },
                child: const Text("Login"),
              )
            ],
          ),
        ));
  }
}
