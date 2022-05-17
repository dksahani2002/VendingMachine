// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      // home: Scaffold(body: GreetingPage()),
      home: GreetingPage(),
    );
  }
}

class GreetingPage extends StatefulWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "WELCOME",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 89, 15, 192),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Greeting message",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 35, 186, 125),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
   Icon customIcon = const Icon(Icons.search);
   Widget customSearchBar = const Text('My Personal Journal');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel); 
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'type in journal name...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    );
                }
                }
              );
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
      ),
    );
  }
}
