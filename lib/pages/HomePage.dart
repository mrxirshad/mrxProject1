import 'package:flutter/material.dart';
import 'package:mrxproject/newe_entry/EntryPage.dart';
import 'package:mrxproject/pages/ButoomContainer.dart';
import 'package:mrxproject/pages/TopContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Task Management",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          TopContainer(),

          BottomContainer(),
        ],
      ),
      // floatingActionButton: Card(
      //     child: Container(
      //       decoration: BoxDecoration(
      //         color: Colors.teal,
      //         borderRadius: BorderRadius.circular(30),
      //       ), child: InkWell(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => NewEntryPage(),));
      //         },
      //         child: const Icon(Icons.add, size: 50, color: Colors.white,
      //
      //         ),
      //     ),
      //     ),
      // ),
    );
  }
}

// }class BottomContainer extends StatelessWidget {
//   const BottomContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       children: [
//         GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2
//             ),
//             itemCount: 2,
//             itemBuilder: (context, index){
//               return Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(21),
//                   color: Colors.teal,
//                 ),
//               );
//             }
//         ),
//       ],
//     );
//   }


