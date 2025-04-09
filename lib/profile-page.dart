import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                          CupertinoIcons.plus_app
                      ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.menu
                    ),
                  ),
                ],
              ),

              //second row
              Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/profile.jpg"),
                        radius: 30.0,
                      ),
                      Text("ARMAN GILANI",
                        style: TextStyle(
                          fontFamily: "ComicSansMS3",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text("0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Posts",
                              style: TextStyle(
                                fontFamily: "ComicSansMS3",
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text("0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Followers",
                              style: TextStyle(
                                fontFamily: "ComicSansMS3",
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text("0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Following",
                              style: TextStyle(
                                fontFamily: "ComicSansMS3",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //third row
              Row(
                children: const [
                  Expanded(
                    child: Card(
                      color: Colors.white70,
                      child: Text("Edit profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ComicSansMS3",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.white70,
                      child: Text("Share profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "ComicSansMS3",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.white70,
                      child: Icon(Icons.person_add_alt_1_outlined),
                    ),
                  ),
                ],
              ),

              //fourth row
              Row(
                children: const [
                  Text("Discover people",
                    style: TextStyle(
                      fontFamily: "ComicSansMS3",
                      fontWeight: FontWeight.bold,
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