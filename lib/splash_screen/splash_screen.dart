import 'package:coffee/color.dart';
import 'package:coffee/splash_screen/details.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColurs.splashScreen,
      body: Stack(children: [
        // Container(
        //   height: size.height,
        // ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'images/s1.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0 , 30 , 30),
            child: Column(
              children: [
              //  const  SizedBox(height: 100,),
             const   Text(
                  'Coffee so good, your taste buds will love it.',
                  style: TextStyle(
                      color: AppColurs.splashText,
                      fontSize: 40,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
               const  Text(
                  'The best grain, the finest roast, the powerful flavor.',
                  style: TextStyle(
                    color: AppColurs.splashText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              const   SizedBox(height: 24,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen() ));
                  },
                  child: Container(
                    height: 62,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                    color: AppColurs.splashButton
                    ),
                    child: const Center(
                      child: Text('Get Started',
                      style: TextStyle(
                        color: AppColurs.splashText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                                        ),
                    )),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
