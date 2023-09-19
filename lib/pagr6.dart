import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:listview/page3.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  int _value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://i.pinimg.com/236x/be/2d/4a/be2d4a7a3fa13f74c41dbd3786db7275.jpg'),
          fit: BoxFit.cover)
        ),
        child: Column(children: [
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            color: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
    children: [
            Text('ON WAY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Radio(
              fillColor: MaterialStateColor.resolveWith((states) => Colors.blue),
              value: 1,
              groupValue: _value,
              onChanged: (value){
                setState(() {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return page3();
                  }));
                });
              },
            ),
            SizedBox(height: 10,),
            Radio(
              fillColor: MaterialStateColor.resolveWith((states) => Colors.blue),
              value: 2,
              groupValue: _value,
              onChanged: (value){
    setState(() {
    Navigator.push(context,MaterialPageRoute(builder: (context){
    return page3();
    }));


              },);}),
            Text('Round Trip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ],
            )
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding:EdgeInsets.only(bottom: 60,right: 10,left: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('FROM :',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
              SizedBox(height: 5,),
              TextField(
                decoration:InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueAccent,width: 2),

                    ),
                  filled: true,
                    fillColor: Colors.white,

                    hintText: 'Start Typing City - Ex. Mumbai'

                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('TO:',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
              SizedBox(height: 5,),
              TextField(
                decoration:InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blueAccent,width: 2),

                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Start Typing City - Ex. Delhi'

                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('PHONE :',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
              SizedBox(height: 5,),
              TextField(
                decoration:InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blueAccent,width: 2),

                    ), filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.phone_android_sharp),
                    hintText: ' Mobile No.'

                ),
              ),
            ],
          ),

        ),
          Padding  (
     padding:  EdgeInsets.only(left: 10.0,right: 250),
     child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('PICKUP DATE',style: TextStyle(fontSize: 15,color: Colors.white),),
             ],
           ),
           TextField(
             decoration:InputDecoration(
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.blueAccent,width: 2),

                 ),
                 filled: true,
                 fillColor: Colors.white,
                 hintText: 'Mumbai'

             ),
           ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('RETURN:',style: TextStyle(fontSize: 15,color: Colors.white),),
             ],
           ),
           SizedBox(height: 5,),
           TextField(
             decoration:InputDecoration(
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.blueAccent,width: 2),

                 ),
                 filled: true,
                 fillColor: Colors.white,
                 hintText: ' Delhi'

             ),
           ),
           SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('PICK UP TIME',style: TextStyle(fontSize: 15,color: Colors.white),),
             ],
           ),
           SizedBox(height: 5,),
           TextField(
             decoration:InputDecoration(
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.blueAccent,width: 2),

                 ),
               filled: true,
               fillColor: Colors.white,
                 suffixIcon: Icon(Icons.timer),


             ),
           ),


         ],
     ),
   ),
          SizedBox(height: 10,),
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

    ],),
      ),);
  }
}
