import 'package:flutter/material.dart';

import 'package:weatherapp/widget/firstpage.dart';
import 'package:weatherapp/widget/splash_Screen.dart';

const SAVE_KEY_NAME = 'userLoggedin';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        'screen_1': (context) {
          return firstPage();
        },
      },
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   //now lets test if everything working
//   //we will call api in this init state funcion'
//   WeatherApiClient client = WeatherApiClient();

//   Weather? data;

//   Future<void> getData() async {
//     data = await client.getCurrentWeather("edappal");
//   }

//   @override
//   Widget build(BuildContext context) {
//     //the first thing that we are going to is to create the UI the app
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 212, 236, 233),
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 212, 236, 233),
//           elevation: 0.0,
//           title: Text(
//             'Weather App',
//             style: TextStyle(color: Colors.black),
//           ),
//           centerTitle: true,
//           leading: IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.menu),
//             color: Colors.black,
//           ),
//         ),
//         body: FutureBuilder(
//           future: getData(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
// // here we will display if we get data from api
//               return Center(
//                 child: Column(
//                   // mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     //lets create custom widget for app
//                     currentWeather(Icons.wb_sunny_rounded, "${data?.temp}",
//                         "${data!.cityName}"),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     const Text(
//                       "Additional information",
//                       style: TextStyle(
//                           fontSize: 24.0,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     const Divider(),
//                     const SizedBox(
//                       height: 20.0,
//                     ),
//                     //now we create additional information widget
//                     additionalInformation("${data!.wind}", "${data!.humidity}",
//                         "${data!.pressure}", "${data!.feels_like}"),
//                     //ui is ready
//                     //start api section
//                     //make model to store the data
//                   ],
//                 ),
//               );
//             } else if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             return Container(
                
//             );
//           },
//         ));
//   }
// }
