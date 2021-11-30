import 'package:flutter/material.dart';
import 'package:sangath/utils/routes.dart';

class Ragister extends StatefulWidget {
  const Ragister({Key? key}) : super(key: key);

  @override
  _RagisterState createState() => _RagisterState();
}

class _RagisterState extends State<Ragister> {
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
                      hintText: "Enter Full Name",
                      labelText: "Full Name",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter the Email id",
                        labelText: "Email Address"),
                  ),
                  TextFormField(
                       
                       decoration: const InputDecoration(hintText: "Mobile Number",labelText: "Enter the Mobile Number"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
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
                  )
                  /*ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRouts.homeRoute);
                      },
                      style: TextButton.styleFrom(
                          minimumSize: const Size(150, 40)),
                      child: const Text("Login"))*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
