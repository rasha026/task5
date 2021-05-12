import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: login(),
      debugShowCheckedModeBanner: false,

    );
  }
}


class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool Visibility=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //at top
        title:Text('login ' ) ,
        leading: Icon(Icons.person),
        // actions: [Icon(Icons.person)],// at right

        backgroundColor:Colors.cyan,


      ),
      body:
      Column(

        children: [
          TextField(

            decoration:

            InputDecoration(hintText: "Enter your name",labelText: 'User name', icon: Icon(Icons.person) ),
          ),

          TextField(
            decoration: InputDecoration(hintText: "Enter your mail",labelText: 'Email',icon: Icon(Icons.mail_outline)  ),
          ),

          TextField(
            decoration: InputDecoration(labelText: 'password',icon: Icon(Icons.lock),
             suffixIcon:  //prefixIcon: in left
                IconButton(
                  icon: Icon(Visibility ?Icons.visibility_off:Icons.visibility),
                  onPressed: (){

                    setState((){
                      Visibility=!Visibility;

                    });
                  },

                )

            ),
            obscureText: Visibility,          ),


          ElevatedButton (onPressed: (){


              Navigator.push(context,MaterialPageRoute(builder:(context){
                return menu();
              }));
          },
            child: Text("login "),),



        ],

      ),


    );
  }

}




class menu extends StatefulWidget {
  const menu({Key key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {

  List values = ['0','1', '2', '3', '4','5','6','7','8','9','10'];
  String SelectedValue1 = '0';
  String SelectedValue2 = '0';
  String SelectedValue3 = '0';
  String SelectedValue4 = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar( title:Text('menu'),backgroundColor: Colors.cyan,),

        body:

    ListView(

   children: [
     Container(
       margin: const EdgeInsets.all(20.0),

       decoration: BoxDecoration(
         color:Colors.cyan,
         borderRadius: BorderRadius.all(Radius.circular(80)),
       ),
       child: Row(
         children: [
           Flexible(flex:4,
               child:  CustomContainer (1),),

           Flexible(
             child: DropdownButton( items: values.map((values) {
               return DropdownMenuItem(child: Text(values),value: values,);

             }).toList(),
               onChanged: (value){
                 setState(() {
                   SelectedValue1=value;
                 });
               },
               value: SelectedValue1,

             ),
           ),]
       ),
     ),

       Container(
       margin: const EdgeInsets.all(20.0),

       decoration: BoxDecoration(
       color:Colors.cyan,
       borderRadius: BorderRadius.all(Radius.circular(80)),
       ),
       child: Row(

         children: [
         Flexible(flex: 4,
         child:  CustomContainer (2),),

          Flexible(
            child: DropdownButton(
              items: values.map((values) {
              return DropdownMenuItem(child: Text(values),value: values,);

            }).toList(),
              onChanged: (value){
                setState(() {
                  SelectedValue2=value;
                });
              },
              value: SelectedValue2,
            ),),]
          ),
       ),

     Container(
       margin: const EdgeInsets.all(20.0),

       decoration: BoxDecoration(
         color:Colors.cyan,
         borderRadius: BorderRadius.all(Radius.circular(80)),
       ),
       child: Row(
           children: [
             Flexible(flex: 4,
               child:  CustomContainer (3),),

             Flexible(
               child: DropdownButton(  items: values.map((values) {
    return DropdownMenuItem(child: Text(values),value: values,);

    }).toList(),
    onChanged: (value){
    setState(() {
    SelectedValue3=value;
    });
    },
    value: SelectedValue3,

                 ),),]
       ),
     ),


     Container(
       margin: const EdgeInsets.all(20.0),

       decoration: BoxDecoration(
         color:Colors.cyan,
         borderRadius: BorderRadius.all(Radius.circular(80)),
       ),
       child: Row(
           children: [
             Flexible(flex: 4,
               child:  CustomContainer (4),),

             Flexible(
               child: DropdownButton(  items: values.map((values) {
                 return DropdownMenuItem(child: Text(values),value: values,);

               }).toList(),
                 onChanged: (value){
                   setState(() {
                     SelectedValue4=value;
                   });
                 },
                 value: SelectedValue4,

                 ),),]
       ),
     ),




   ]

    )

    );
  }
}








Widget CustomContainer  (text) {



  return Container(
    margin: const EdgeInsets.all(20.0),

    decoration: BoxDecoration(
      color:Colors.cyan,
      borderRadius: BorderRadius.all(Radius.circular(80)),

    ),
    child:

         Column(
          children: [
             Container(
                margin: const EdgeInsets.all(10.0),

                decoration: BoxDecoration(
                  color: Colors.white24,

                  borderRadius: BorderRadius.all(Radius.circular(90)),
                ),
                child: Image.asset('food/$text.png'),

              ),

            Text('meal$text',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ],
        ),





  );

}



