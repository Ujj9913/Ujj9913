import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sangath/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/login.png')),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "enter name",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "enter password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeBtn = true;
                      });

                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRouts.homeRoute);
                    },
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeBtn ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeBtn
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeBtn ? 50 : 8))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRouts.ragister);
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          minimumSize: const Size(150, 50)),
                      child: const Text(
                        "ragister",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
