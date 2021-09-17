import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_lab_app/Home/HomePage.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({Key key}) : super(key: key);

  @override
  _LoginScreenPageState createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: CustomPaint(
                size: Size(400, 400),
                painter: CurvePainter(),
              ),
            ),
            Positioned(
              top: 150,
              left: 50,
              bottom: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0, right: 20),
                child: Column(
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.only(left: 38.0, right: 38, top: 38),
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'EMAIL',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        hintText: 'PASSWORD',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                       fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Forgot Password? Reset here",   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExampleHomePage()));
                      },
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Log In",
                                style: TextStyle(color: Colors.white),
                              ),
                              CircleAvatar(
                                maxRadius: 20,
                                minRadius: 10,
                                backgroundColor: Colors.white,
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.blue.shade800,
                                      size: 10.0,
                                    ),
                                    onPressed: () {
                                      // _pdfViewerController.previousPage();
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Text("Don't have an account? Sign up", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.lightBlueAccent
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.grey.shade300;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0, size.width * 1.0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 1, size.height * 0.8, size.width * 20.0,
        size.height * 2.8);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
