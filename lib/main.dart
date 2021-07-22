import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
//import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async {
  runApp(MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // var firestore = FirebaseFirestore.instance;

  // void addfunction()

  // {
  //   var newmap = {'firstname': 'tanishka', 'lastname':'vaswani'};
  //   firestore.collection('firstcolection').add(newmap);
  // }

  // void setfunction() async

  // {
  //   QuerySnapshot retrievedmap = await firestore.collection('firstcolection').get();
  //   DocumentSnapshot retrievedmap2 = await firestore.collection('firstcolection').doc('87o8QCUgN17fTkyxZHO3').get();
  //   print(retrievedmap2['firstname']);
  //   print(retrievedmap2['lastname']);

  //   print(retrievedmap.docs[0]);
  // }


  void apifunction() async {
    //var url =
    //Uri.https('https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByPin?pincode=456001&date=31-03-2021');

    var url = Uri.parse('https://catfact.ninja/fact');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    var body = response.body;
    print(body);

    // var a =jsonDecode(body);
    // print(a['sessions'][0]);



    var urltwo = Uri.parse('https://www.boredapi.com/api/activity');
    var responsetwo = await http.get(urltwo);
    var bodytwo = responsetwo.body;
    print(bodytwo);
    var a = jsonDecode(bodytwo);
    print(a['activity']);

    var urlthree = Uri.parse('https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByPin?pincode=456001&date=31-03-2021');
    var responsethree = await http.get(urlthree);
    var bodythree = responsethree.body;
    print(bodythree);

    var urlfour = Uri.parse('https://api.weatherapi.com/v1/current.json?key=8d234f8581d64529a9b192245212207&q=London&aqi=no');
    var responsefour = await http.get(urlfour);
    var bodyfour = responsefour.body;
    print(bodyfour);
    var b = jsonDecode(bodyfour);
    print(b['location']['name']);



  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body:
      Column(
        children: [
          SizedBox(height:50),
          TextButton(onPressed: (){
            main();
            apifunction();
            //setfunction();
          },
              child:
              Text('retrive')
          ),
        ],
      ),

















      // body: StreamBuilder(
      //   stream: firestore.collection('firstcolection').snapshots(),
      //   builder: (context, snapshot)
      //   {
      //     if(!snapshot.hasData)
      //       return Text('no data, wait it is loading');


      //     return Column(
      //       children: [
      //         // Text(
      //         //   snapshot.data!.documents[0]['firstname'],

      //         //   ),

      //         //   Text(
      //         //   snapshot.data.documents[0]['lastname'],

      //         //   ),


      // // fi.collection('users').doc(id).get()
      // //   .then(print(snapshot.data!())),



      //         ],
      //     );




      //   },
      //   ),











































      // body: Column(

      //   children: <Widget>[
      //     SizedBox(height:50),
      //     TextButton(onPressed: (){
      //       addfunction();
      //     }, child: Text('Press')),

      //     SizedBox(height:10),
      //     TextButton(onPressed: (){
      //      setfunction();
      //     },
      //     child:
      //     Text('Retrieve data'))
      //   ],
      // ),

    );
  }
}

























// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter_signin_button/flutter_signin_button.dart';
// // import 'package:splashscreen/splashscreen.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_database/firebase_database.dart';
//
//
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       // home: MyHomePage(title: 'Flutter Demo Home Page'),
//       home: MyApp(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var firestore = FirebaseFirestore.instance;
//
//   void addfunction()
//
//   {
//     var newmap = {'firstname': 'tanishka', 'lastname':'vaswani'};
//     firestore.collection('firstcolection').add(newmap).then((value) => {print(value.id),});
//   }
//
//   void setfunction()
//
//   {
//     //var newmap = {'name': 'tanishka', 'age':'19', 'email': 'tanishkavaswani1@gmail.com'};
//     var retrievedmap = firestore.collection('firstcolection').get();
//     print(retrievedmap);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: (
//
//       Column(
//
//       ),
//       ),
//     );
//   }
// }
//
// //
// // class MyAppNew extends StatelessWidget {
// //   const MyAppNew({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     User result = FirebaseAuth.instance.currentUser;
// //     return new SplashScreen(
// //         navigateAfterSeconds: result != null ? Home(uid: result.uid) : SignUp(),
// //         seconds: 5,
// //         title: new Text(
// //           'Welcome To Meet up!',
// //           style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
// //         ),
// //         image: Image.asset('assets/images/dart.png', fit: BoxFit.scaleDown),
// //         backgroundColor: Colors.white,
// //         styleTextUnderTheLoader: new TextStyle(),
// //         photoSize: 100.0,
// //         onClick: () => print("flutter"),
// //         loaderColor: Colors.red);
// //
// //   }
// // }