import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

  var firestore = FirebaseFirestore.instance;

  void addfunction()

  {
    var newmap = {'firstname': 'tanishka', 'lastname':'vaswani'};
    firestore.collection('firstcolection').add(newmap);
  }

  void setfunction() async

  {
    DocumentSnapshot retrievedmap = await firestore.collection('firstcolection').doc('87o8QCUgN17fTkyxZHO3').get();
    print(retrievedmap['firstname']);
    print(retrievedmap['lastname']);
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
            setfunction();
          }, child: Text('retrive'))
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
