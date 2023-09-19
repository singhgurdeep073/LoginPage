import 'package:flutter/material.dart';

import 'pagr6.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

        ),
       child: Column(
         children: [
           SizedBox(height: 40,),
           Container(
             height: 120,

             decoration: BoxDecoration(
                 boxShadow: [BoxShadow(blurRadius: 5,color: Colors.black38)],
                 image: DecorationImage(image: AssetImage('images/book1a.png'))
             ),
           ),
           SizedBox(height: 40,),
           Text("Forget Password",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
           SizedBox(height: 40,),
           Padding(
             padding: const EdgeInsets.only(bottom: 60,right: 10,left: 10),
             child: TextField(
               decoration:InputDecoration(
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                   ),

                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.blueAccent,width: 2)

                   ),
                   suffixIcon: Icon(Icons.phone_android_sharp),
                   hintText: 'Enter Registered Mobile Number'

               ),
             ),
           ),
           GestureDetector(
             onTap: (){
               Navigator.push(context,MaterialPageRoute(builder: (context){
                 return page6();
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
                 child: Center(child: Text('Submit',style: TextStyle(color: Colors.grey[300],fontSize: 20,fontWeight: FontWeight.bold,),)),
               ),
             ),
           ),
         ],
       ),
      ),
    );
  }
}
