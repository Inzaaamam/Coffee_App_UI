import 'package:coffee/color.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: size.height,
            color: Colors.green, // Adjust background color as needed
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              'images/maps.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColurs.dividerColor),
                  child: const Icon(Icons.arrow_back_ios, size: 24),
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColurs.dividerColor),
                  child: Icon(Icons.my_location, size: 24),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                // height: size.height * 0.45,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0), // Top left corner
                      topRight: Radius.circular(20.0),
                      // Top right corner)
                    ),
                    color: AppColurs.splashText
                    // height: 400,
                    ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10,),
                          Container(height: 5,
                          width: 44,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                          color: AppColurs.dividerColor),),
                         const  SizedBox(height: 16,),
                          const Text(
                            '10 minutes left',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColurs.fontColorBlack),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'Delivery to Jl. Kpg Sutoyo',
                            style: TextStyle(
                                fontSize: 12, color: AppColurs.dividerColor),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 4,
                                width: 71,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green),
                              ),
                              Container(
                                height: 4,
                                width: 71,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green),
                              ),
                              Container(
                                height: 4,
                                width: 71,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green),
                              ),
                              Container(
                                height: 4,
                                width: 71,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColurs.dividerColor),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Container(
                            // height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    color: AppColurs.dividerColor, width: 1)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 14, 16, 14),
                              child: Row(
                                children: [
                                  Container(
                                    height: 62,
                                    width: 62,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            color: AppColurs.dividerColor,
                                            width: 1),
                                        image: const DecorationImage(
                                            image:
                                                AssetImage('images/Frame.png'),
                                            fit: BoxFit.contain)),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Delivered your order',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: AppColurs.fontColorBlack,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'We deliver your goods to you in the shortes possible time.', textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: AppColurs.splashText2,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          //person
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColurs.splashText, width: 1),
                                    borderRadius: BorderRadius.circular(14),
                                    image: const DecorationImage(
                                        image: AssetImage('images/bg.png'),
                                        fit: BoxFit.contain)),
                              ),
                              Spacer(flex: 1,),
                              const Column(
                                children: [
                                  Text(
                                    'Johan Hawn',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColurs.fontColorBlack,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Personal Courier',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColurs.dividerColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                               Spacer(flex: 5,),
                              Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                        color: AppColurs.dividerColor,
                                        width: 1)),
                                child: Icon(
                                  Icons.call,
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
