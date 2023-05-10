import 'package:flutter/material.dart';
import 'package:flutter_first_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


// Stateless Widget
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Flutter")),
//       body: Center(child: Text("Hello World")),
//     );
//   }
// }

// // Statefull Widget
// class HomePaeStatefull extends StatefulWidget {
//   const HomePaeStatefull({Key? key}) : super(key: key);

//   @override
//   State<HomePaeStatefull> createState() => _HomePaeStatefullState();
// }

// class _HomePaeStatefullState extends State<HomePaeStatefull> {
//   var text = "1 + 1 = ";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Statefull Widget")),
//       body: Center(child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(text),
//           ElevatedButton(onPressed: () {
//             setState(() {
//               text = "2";
//             });
//           }, child: const Text
//           ("Hitung"))
//         ],
//       )),
//     ); 
//   }
// }