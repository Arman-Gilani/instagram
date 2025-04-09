import 'package:flutter/material.dart';
class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Row(
                children: const [
                  BackButton(),
                  Text("Activity",
                    style: TextStyle(
                      fontFamily: "ComicSansMS3",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      wordSpacing: 2.0,
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