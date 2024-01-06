import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
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
            height: height(context) * 0.35,
            width: width(context),
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              border: Border.all(width: 0),
            ),
          ),
          Positioned(
            top: height(context) * 0.25,
            left: -width(context) / 12,
            child: const Image(
              image: AssetImage("assets/images/cloud.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height(context) * 0.4),
            padding: const EdgeInsets.only(left: 65, right: 65),
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                Text(
                  "OTP",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Check your e-mail for the OTP",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 0.27),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height(context) * 0.55),
            width: width(context),
            // padding: const EdgeInsets.only(left: 65, right: 65),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: const Color(0xFF512DA8),
                  textStyle: const TextStyle(fontSize: 16),
                  // borderWidth: 4.0,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  // onSubmit: (String verificationCode) {
                  //   showDialog(
                  //       context: context,
                  //       builder: (context) {
                  //         return AlertDialog(
                  //           title: Text("Verification Code"),
                  //           content: Text('Code entered is $verificationCode'),
                  //         );
                  //       });
                  // }, // end onSubmit
                ),
                Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: width(context) * 0.25),
                    ),
                    
                    child: const Text(
                      "Enter",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ))),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
