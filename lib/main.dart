import 'package:flutter/material.dart';
import 'package:mrxproject/FirstPage.dart';
import 'package:mrxproject/models/TaskType.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   GloblBloc? globlBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    globlBloc = GloblBloc();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<GloblBloc>.value(
      value:globlBloc!,
        child:Sizer(builder:(context, value , child){
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const FirstPage(),
          );
    })
    );
  }
}


