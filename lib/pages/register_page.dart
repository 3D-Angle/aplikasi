import 'package:app_3d_angle/pages/login_page.dart';
import 'package:app_3d_angle/pages/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double height(BuildContext context) => MediaQuery.of(context).size.height;

  bool passwordSee = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Stack(
          children: [
            Container(
              height: height(context) * 0.25,
              width: width(context),
              decoration: BoxDecoration(
                  color: const Color(0xFF749BC2), border: Border.all(width: 0)),
            ),
            Positioned(
              top: height(context) * 0.15,
              left: -width(context) / 12,
              child: const Image(image: AssetImage("assets/images/cloud.png")),
            ),
            Container(
              margin: EdgeInsets.only(top: height(context) * 0.25),
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff4682A9)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.create_outlined,
                          color: Color(0xff4682A9)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff4682A9))),
                      labelText: "Username",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(70, 130, 169, 0.27),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.create_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.27)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 0, 0, 0.27))),
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.27),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  TextField(
                    obscureText: passwordSee,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.create_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.27)),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          passwordSee = !passwordSee;
                          setState(() {});
                        },
                        child: Icon(
                          passwordSee
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: const Color.fromRGBO(0, 0, 0, 0.27),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 0, 0, 0.27))),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.27),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  TextField(
                    obscureText: passwordSee,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.create_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.27)),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          passwordSee = !passwordSee;
                          setState(() {});
                        },
                        child: Icon(
                          passwordSee
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: const Color.fromRGBO(0, 0, 0, 0.27),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(0, 0, 0, 0.27))),
                      labelText: "Re-enter Password",
                      labelStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.27),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height(context) * 0.7),
              height: height(context) * 0.25,
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Sign Up",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4682A9))),
                      TextButton(
                        onPressed: () {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) {
                              return const OTPPage();
                            })
                          );
                        },
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 24),
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xff4682A9)),
                        child: Icon(CupertinoIcons.arrow_right_circle_fill,
                            size: 54),
                      )
                      // TextButton(
                      //   onPressed: () {
                      //         Navigator.push(context, 
                      //         MaterialPageRoute(builder: (context) {
                      //         return const OTPPage();
                      //       })
                      //     );
                      //   },
                      //   style: TextButton.styleFrom(
                      //       foregroundColor: const Color.fromRGBO(0, 0, 0, 0.27),
                      //       padding: EdgeInsets.zero),
                      //   child: const Text("Sign Up",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.bold)),
                      // ),
                      // const Image(
                      //   image: AssetImage("assets/images/logo.png"),
                      //   width: 45,
                      // )
                      // ElevatedButton(onPressed: (){}, child: Text("Sign In"), style: ElevatedButton.styleFrom(
                      //   backgroundColor: Colors.transparent,
                      // ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: const Color.fromRGBO(0, 0, 0, 0.27),
                            padding: EdgeInsets.zero),
                        child: const Text("Sign In",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
