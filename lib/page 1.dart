import 'dart:async';

import 'package:flutter/material.dart';
import 'package:listview/page2.dart';
import 'package:lottie/lottie.dart';
class Spalsh extends StatefulWidget {
  const Spalsh({Key? key}) : super(key: key);

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Page2(),

            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),

        body: Container(height: double.infinity,
          width: double.infinity,

          child: Padding(
            padding:  EdgeInsets.only(top: 250),
            child: Column(
              children: [
                Lottie.network(
                  'https://assets3.lottiefiles.com/packages/lf20_is82b4.json',
fit: BoxFit.cover
                ),

              ],
            ),
          ),
        )
    );
  }
}
