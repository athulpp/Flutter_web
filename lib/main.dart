import 'package:flutter/material.dart';
import 'package:responsive_web/pages/home.dart';
import 'package:responsive_web/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
          fontFamily: 'HindSiliguri',
          brightness: Brightness.light,
          primaryColor: AppColors.primary),
      home: Home(),
    );
  }
}








// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: MyHomePage());
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('LayoutBuilder Example'),
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxWidth > 600) {
//             return _buildWideLayout();
//           } else {
//             return _buildNarrowLayout();
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildWideLayout() {
//     return Center(
//       child: Container(
//         width: 300,
//         height: 300,
//         color: Colors.blue,
//         child: const Center(
//           child: Text(
//             'Wide Layout',
//             style: TextStyle(fontSize: 24, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNarrowLayout() {
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.green,
//         child: const Center(
//           child: Text(
//             'Narrow Layout',
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
