import 'package:flutter/material.dart';
import 'package:flutterexam/TabBar/Evaluation.dart';
import 'package:flutterexam/TabBar/Event.dart';
import 'package:flutterexam/TabBar/Students.dart';
import 'package:flutterexam/TabBar/Subject.dart';

class HomeManager extends StatefulWidget {
  const HomeManager({super.key});

  @override
  State<HomeManager> createState() => _HomeManagerState();
}

class _HomeManagerState extends State<HomeManager>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(250),
            child: Stack(
              fit: StackFit.loose,
              children: [
                Positioned(
                  top: 10,
                  left: 50,
                  child: Container(
                    color: Colors.transparent,
                    child: const Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Student',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xffEDAC02),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Management',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xff002184),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 15,
                  child: Row(
                    children: [
                      Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Enter keyword to find out...'),
                                  SizedBox(width: 30,),
                                  Icon(Icons.search, color: Color(0xffEDAC02),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      InkWell(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF3F4F6)
                          ),
                          child: const Center(
                            child: Image(image: AssetImage(
                                'lib/assets/icon-filter.png')),
                          ),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
                const Positioned(
                    child: Image(image: AssetImage('lib/assets/student.png'))),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(8),
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery
                        .of(context)
                        .size
                        .height,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: Column(
                      children: [
                          TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            indicatorColor: Colors.white,
                            indicator: BoxDecoration(
                                color: const Color(0xff002184),
                                borderRadius: BorderRadius.circular(50)),
                            controller: tabController,
                            tabs: const [
                              Tab(
                                child: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    'Students',
                                    style: TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Subject',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Evalua',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Event',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: const [
                          Students(),
                          Subject(),
                          Evaluation(),
                          Event()
                        ],
                      ))
                ],
              ),
            ),
          ),
      ),
    );
  }
}
