import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter/navigation_bottom.dart';

import 'features/presentation/signup_screen.dart';

class HomeTemplateScreen extends ConsumerStatefulWidget {
  const HomeTemplateScreen({Key? key}) : super(key: key);

  @override
  _HomeTemplateScreenState createState() => _HomeTemplateScreenState();
}

class _HomeTemplateScreenState extends ConsumerState<HomeTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(0, 100),
                      ),
                      color: Color.fromARGB(255, 80, 3, 94),
                      // color: Colors.black,
                    ),
                    width: size.width,
                    height: size.height / 1,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(
                          4000,
                          4000,
                        ),
                      ),
                      color: Colors.purple,
                    ),
                    width: size.width,
                    height: size.height * 0.90,
                  ),
                  const Positioned(
                    top: 130,
                    left: 120,
                    right: 0,
                    bottom: 0,
                    child: Text(
                      'Education',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 50,
                    child: Image.asset(
                      "assets/images/book2.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                  Positioned(
                    top: 600,
                    left: 70,
                    child: Container(
                      width: size.width / 1.5,
                      child: const Center(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          maxLines: 2,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 700,
                    left: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      width: size.width / 2,
                      child: TextButton(
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          // Navigate to SignUpScreen using Navigator.pushNamed
                          Navigator.pushNamed(context, '/signUp');
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: MNavigationBottom(),
    );
  }
}
