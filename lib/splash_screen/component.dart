import 'package:coffee/color.dart';
import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  const Component({super.key});

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

      children: [
        
        const Text('10 minutes left', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColurs.fontColorBlack),),
        const SizedBox(height: 8,),
        const Text('Delivery to Jl. Kpg Sutoyo', style: TextStyle(fontSize: 12, color: AppColurs.dividerColor),),
        Row(children: [
         Container(height: 4,
         width: 71,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
         color: Colors.green),),
         Container(height: 4,
         width: 71,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
         color: Colors.green),),
         Container(height: 4,
         width: 71,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
         color: Colors.green),),
         Container(height: 4,
         width: 71,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
         color: AppColurs.dividerColor),),
        ],),
        Container(
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColurs.dividerColor, width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
            child: Row(
              children: [
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border:
                          Border.all(color: AppColurs.dividerColor, width: 1),
                      image: const DecorationImage(
                          image: AssetImage('images/Frame.png'),
                          fit: BoxFit.contain)),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Column(
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
                        'We deliver your goods to you in the shortes possible time.',
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColurs.splashText2,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ), 
        //person
          Row(children: [
            Container(height: 54,
            width: 54,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(image: AssetImage(''))),),
            const Column(children: [
              Text('Johan Hawn', style: TextStyle(fontSize: 14, color: AppColurs.fontColorBlack, fontWeight: FontWeight.w600),),
              SizedBox(height: 8,),
              Text('Personal Courier', style: TextStyle(fontSize: 12, color: AppColurs.dividerColor, fontWeight: FontWeight.w600),)
            ],),
            Container(height: 54,
            width: 54,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColurs.dividerColor, width: 1)
            ),child: Icon(Icons.call, ),),
          ],)
      ],
    ));
  }
}
