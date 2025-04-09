import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram/home-page1.dart';
import 'package:instagram/post-page.dart';
import 'package:instagram/profile-page.dart';
import 'package:instagram/reel-page.dart';
import 'package:instagram/search-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex=0;
  final pageOption=[
    const HomePage1(),
    const SearchPage(),
    const PostPage(),
    const ReelPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text("Instagram"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const ActivityPage(),));
      //       },
      //       icon: const Icon(
      //           CupertinoIcons.heart
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatPage(),));
      //       },
      //       icon: const Icon(
      //         CupertinoIcons.chat_bubble_text
      //       ),
      //     ),
      //   ],
      // ),

      body: pageOption[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
                color: Colors.black,
            ),
            label: "",
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.search,
                  color: Colors.black,
              ),
              label: "",
              //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.plus_app,
              color: Colors.black,
            ),
            label: "",
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.play_rectangle,
              color: Colors.black,
            ),
            label: "",
            //backgroundColor: Colors.blue,
          ),BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: "",
            //backgroundColor: Colors.blue,
          ),
        ],
        onTap: (value) {
          setState(() {
            currentIndex=value;
          });
        },
      ),
    );
  }
}