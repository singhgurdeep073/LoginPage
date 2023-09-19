import 'package:flutter/material.dart';
import 'package:listview/page4.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    body: Column(
      children: [
       Container(
         height: 200,decoration: BoxDecoration(
         image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQio4NMKPAOhBtzq94_o8JY-Nv6QHHg5bj3sQ&usqp=CAU'),
         fit: BoxFit.cover
         )
       ),

         child: Padding(
           padding:  EdgeInsets.only(top: 25.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CircleAvatar(

backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfLUWSVU5wa8KYgwNwaF3xpPhqDpJpXV5XyA&usqp=CAU'),
                 radius: 67,
               ),
             ],
           ),
         ),
       ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 68.0,top: 50),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Welcome To Book Mari Gadi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
            SizedBox(height: 10,),
              Text('Login/Signup',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 40,),
            Text('Enter 10 Digit Mobile Number'),
              SizedBox(height: 50,),

            ],
          ),
        ),


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
                hintText: 'Enter Mobile Number'

            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return Page4();
            }));
          },
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width:330,

              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))

              ),
              child: Center(child: Text('Request OTP',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
      ],
    )
    );
  }
}
