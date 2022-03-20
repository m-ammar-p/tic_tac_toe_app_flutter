import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/screens/home.dart';
import 'package:tic_tac_toe_app/widgets/app_Text.dart';
import 'package:tic_tac_toe_app/widgets/o.dart';
import 'package:tic_tac_toe_app/widgets/x.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => Home()));
  } // _navigateToHome

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xFF0D47A1),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    color: const Color(0xFF0D47A1),
                    height: h * 0.5,
                    width: w * 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 66, bottom: 8.5),
                      child: Column(
                        children: [
                          const AppText(
                            text: "KATI ZERO",
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 12,
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              O(
                                size: 45,
                                color: const Color(0XFFFFFFFF),
                                insideColor: const Color(0XFF42A5F5),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              O(
                                  size: 45,
                                  color: const Color(0XFFFFFFFF),
                                  insideColor: const Color(0XFF42A5F5)),
                              const SizedBox(
                                width: 14,
                              ),
                              X(
                                size: 50,
                                height: 12,
                                color: const [
                                  Color(0XFFFFFFFF),
                                  Color(0XFFFFFFFF)
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              O(
                                  size: 45,
                                  color: const Color(0XFFFFFFFF),
                                  insideColor: const Color(0XFF42A5F5)),
                              const SizedBox(
                                width: 14,
                              ),
                              X(
                                size: 50,
                                height: 12,
                                color: const [
                                  Color(0XFFFFFFFF),
                                  Color(0XFFFFFFFF)
                                ],
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              X(
                                size: 50,
                                height: 12,
                                color: const [
                                  Color(0XFFFFFFFF),
                                  Color(0XFFFFFFFF)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0XFF42A5F5),
                    height: h * 0.5,
                    width: w * 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 55, top: 8.5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              X(
                                size: 50,
                                height: 12,
                                color: const [
                                  Color(0XFF0D47A1),
                                  Color(0XFF0D47A1)
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              O(size: 45, color: const Color(0XFF0D47A1)),
                              const SizedBox(
                                width: 18,
                              ),
                              O(size: 45, color: const Color(0XFF0D47A1)),
                            ],
                          ),
                          const Spacer(),
                          const AppText(
                            text: "POWERED BY",
                            fontSize: 20,
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 12,
                          ),
                          const AppText(
                            text: "TECH IDARA",
                            fontSize: 35,
                            color: Color(0XFF0D47A1),
                            fontWeight: FontWeight.w600,
                            letterSpacing: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
} // Splash Class
