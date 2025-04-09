import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              //first row
              Row(
                children: [
                  const BackButton(),
                  const Expanded(
                    child: Text("arman_1201",
                      style: TextStyle(
                        fontFamily: "ComicSansMS3",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        wordSpacing: 2.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                        //CupertinoIcons
                        Icons.video_call
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                        CupertinoIcons.plus
                    ),
                  ),
                ],
              ),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.white10,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}