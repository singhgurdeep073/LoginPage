import 'package:flutter/material.dart';

import 'page5.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50,),

            Container(
              height: 120,

              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 5,color: Colors.black38)],
                  image: DecorationImage(image: AssetImage('images/book1a.png'))
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),

                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),


                  ),
                  filled: true,
                  fillColor: Colors.white,

                  labelText:'Enter User Name',
                  suffixIcon: Icon(Icons.person,color: Colors.deepOrange,)
              ),
            ),
            SizedBox(height: 20,),
            TextField(

              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),

                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText:'Mobile Number',
                  suffixIcon: Icon(Icons.phone_enabled_outlined,color: Colors.deepOrangeAccent,)
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),


                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText:'Enter Email',
                  suffixIcon: Icon(Icons.email_rounded,color: Colors.deepOrange,)
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),

                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(40),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText:'Enter Password',
                  suffixIcon: Icon(Icons.password_outlined,color: Colors.deepOrangeAccent,)
              ),
            ),
            SizedBox(height: 70,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return Page5();
                }));
              },
              child: Padding(
                padding:  EdgeInsets.only(left: 50,right: 50),
                child: Container(
                  height: 50,
                  width:330,

                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))

                  ),
                  child: Center(child: Text('Register',style: TextStyle(color: Colors.grey[300],fontSize: 20,fontWeight: FontWeight.bold,),)),
                ),
              ),
            ),


          ],
        ),
      ),);
  }
}
