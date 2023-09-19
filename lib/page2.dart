import 'package:flutter/material.dart';
import 'package:listview/page3.dart';
import 'package:listview/page4.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 50),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(20))


                ),

                height: 342,
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Column(

                    children: [
                      SizedBox(height: 10,),


                     Container(
                       height: 120,

                       decoration: BoxDecoration(
                         boxShadow: [BoxShadow(blurRadius: 5,color: Colors.black38)],
                           image: DecorationImage(image: AssetImage('images/book1a.png'))
                       ),
                     ),
                      SizedBox(height: 10,),
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
                           labelText:'Enter Email/ Phone No',
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
                     SizedBox(height: 6,),
                     Padding(
                       padding: const EdgeInsets.only(left: 200),
                       child: Text('Forget Password',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                     ),
                     SizedBox(height: 25,),



                    ],

                  ),

                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){
                      return page3();
                    }));
                  },
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Container(
  height: 50,
  width:330,

  decoration: BoxDecoration(
        color: Colors.blue,
borderRadius: BorderRadius.all(Radius.circular(30))

  ),
  child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)),
),
                  ),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return Page4();
                        }));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,top: 30),
                          child: Text("For New User ?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey,shadows: [
                            BoxShadow(
                              blurRadius:2,
                              color: Colors.white
                            )
                          ]),),
                        ),
                      ),
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return page3();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30,top: 30),
                          child: Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent,
                            ),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
