import 'package:flutter/material.dart';
import 'package:mrxproject/models/TaskType.dart';
import 'package:mrxproject/newe_entry/SlectionsPage.dart';
import 'IconsData.dart';
import 'PannelPage.dart';
import 'SelectedTime.dart';
import 'package:provider/provider.dart';

class NewEntryPage extends StatefulWidget {
  NewEntryPage({super.key});

  @override
  State<NewEntryPage> createState() => _NewEntryPageState();
}

class _NewEntryPageState extends State<NewEntryPage> {
  late TextEditingController _taskController = TextEditingController();

  late TextEditingController _desController = TextEditingController();

  late GlobalKey<ScaffoldState> _scaffoldKey;

  void dispose() {
    _desController.dispose();
    _taskController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _taskController = TextEditingController();
    _desController = TextEditingController();

    // _scaffoldKey = GlobalKey<ScaffoldKey>();
    _scaffoldKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {

    final GloblBloc  globlBloc = Provider.of<GloblBloc>(context);
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Add New Task"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade200,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Pannel(tittle: " Task Name", isRequired: " *"),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _taskController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    hintText: "Add Task Name",
                  ),
                ),
              ),
              Pannel(tittle: "Descriptions", isRequired: " *"),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _desController,
                  maxLength: 100,
                  maxLines: 4,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    hintText: "Add Descriptions......",
                  ),
                ),
              ),
              Pannel(tittle: "Icons", isRequired: " *"),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: StreamBuilder(
                  builder: (context, value){
                    return  Row(
                      children: [
                        IconsData(
                          name: "Cycling",
                          iconsName: "lib/icons/cycling.png",
                          ipressed: (){},
                        ),
                        IconsData(
                          name: "Study",
                          iconsName: "lib/icons/read.png",
                          ipressed: (){},
                        ),
                        IconsData(
                          name: "Hair Cut",
                          iconsName: "lib/icons/hair-cut.png",
                          ipressed: (){},
                        ),
                        IconsData(
                          name: "Drinkig",
                          iconsName: "lib/icons/glass-of-water.png",
                          ipressed: (){},
                        ),
                        IconsData(
                          name: "Gym",
                          iconsName: "lib/icons/dumbell.png",
                          ipressed: (){},
                        ),
                      ],
                    );
                  },

                ),
              ),
              const SizedBox(height: 10,),
              Pannel(tittle: "Date", isRequired: " *"),
             const IntervalSlections(),
              SizedBox(height: 10,),

              Pannel(tittle: "Select Time", isRequired: " *"),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SelectedTime(),
                 Center(
                   child: SizedBox(
                     width: 150,
                     height: 50,
                     child: TextButton(
                       style: TextButton.styleFrom(
                         backgroundColor: Colors.teal,
                         shape: StadiumBorder(),
                       ),child: const Text("Confirm",style: TextStyle(fontSize: 15,color: Colors.white),
                     ),
                       onPressed: (){

                       },
                     ),

                   ),
                 ),
               ],
             ),
            ],
          ),
        ),
      ),


    );
  }
}






