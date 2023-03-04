import 'package:flutter/material.dart';
import '../Cards/home_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeCard> dinesh = Data.map((contact) => HomeCard(contact)).toList();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
            SliverAppBar(
            elevation: 0,
            backgroundColor:const Color.fromARGB(255, 0, 128, 105),
            title: const Padding(
              padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
              child: Text("WhatsApp",style:TextStyle(fontSize: 25)),
            ),
            toolbarHeight: 50,
            expandedHeight: MediaQuery.of(context).size.height * 0.01, //cool stuff
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  IconButton(
                    onPressed: () => {}, 
                    icon: const Icon(Icons.photo_camera_outlined),
                    iconSize: 27.0,
                    ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.search),
                    iconSize: 27.0,
                    ),
                  IconButton(
                    onPressed: () => {}, 
                    icon: const Icon(Icons.more_vert),
                    iconSize: 27.0,
                    ),
                ],),
              )

            ],
          ),
           SliverAppBar(
            toolbarHeight: 55,
            expandedHeight: 10,
            elevation: 0,
            pinned: true,
            backgroundColor:const Color.fromARGB(255, 0, 128, 105),
            actions: [
              Expanded(
                flex: 1,
                child: Image.asset("lib/Assets/Community.png")
                ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 3,
                      )
                    )
                  ),
                  child: TextButton(
                    onPressed: () => {}, 
                    child: const Text("Chats",style: TextStyle(fontSize: 17,color: Colors.white),),
                    
                    ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TextButton(
                  onPressed: () => {}, 
                  child: const Text("Status",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 221, 220, 220)),),
                  ),
              ),
              Expanded(
                flex: 3,
                child: TextButton(
                  onPressed: () => {}, 
                  child: const Text("Calls",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 221, 220, 220)),),
                  ),
                ),
            ],
                    
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return dinesh[index];
                },
                childCount: Data.length, 
              ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {})
        ),
    );
  }
}

// ignore: non_constant_identifier_names
List<Map<String, String>> Data = [
    {
        "id": "2",
        "name": "Alex",
        "picture": "https://image.ibb.co/cA2oOb/alex_1.jpg",
        "latest_timestamp": "10:00 AM",
        "lastChat": "Or maybe not, let me check logistics and call you. Give me sometime"
    },
    {
        "id": "3",
        "name": "Bob",
        "picture": "https://image.ibb.co/gSyTOb/bob_1.jpg",
        "latest_timestamp": "12:30 AM",
        "lastChat": "Alright"
    },
    {
        "id": "4",
        "name": "Luke",
        "picture": "https://image.ibb.co/jOzeUG/luke_1.jpg",
        "latest_timestamp": "4:12 PM",
        "lastChat": "I will look into it"
    },
    {
        "id": "5",
        "name": "Bane",
        "picture": "https://image.ibb.co/cBZPww/bane_1.jpg",
        "latest_timestamp": "7:53 PM",
        "lastChat": "Exactly my point!"
    },
    {
        "id": "6",
        "name": "Darth Vader",
        "picture": "https://image.ibb.co/j4Ov3b/darth_vader_1.png",
        "latest_timestamp": "1:09 PM",
        "lastChat": "Not quite the same."
    },
    {
        "id": "7",
        "name": "Zach",
        "picture": "https://image.ibb.co/b4kxGw/zach_1.jpg",
        "latest_timestamp": "Yesterday",
        "lastChat": "I thought that the event was over long ago"
    },
    {
        "id": "8",
        "name": "Katie",
        "picture": "https://image.ibb.co/eLVWbw/katie_1.jpg",
        "latest_timestamp": "Yesterday",
        "lastChat": "nothing"
    },
    {
        "id": "9",
        "name": "Chloe",
        "picture": "https://image.ibb.co/ncAa3b/chloe_1.jpg",
        "latest_timestamp": "Wednesday",
        "lastChat": "sure i'll take it from you"
    },
    {
        "id": "10",
        "name": "Kennith",
        "picture": "https://image.ibb.co/fQKPww/kennith_1.jpg",
        "latest_timestamp": "Wednesday",
        "lastChat": "Take care, bye"
    },
    {
        "id": "11",
        "name": "Tara",
        "picture": "https://image.ibb.co/dM6hib/tara_1.jpg",
        "latest_timestamp": "Monday",
        "lastChat": "Not today"
    },
    {
        "id": "12",
        "name": "Gary",
        "picture": "https://image.ibb.co/gsF8Ob/gary_1.jpg",
        "latest_timestamp": "Sunday",
        "lastChat": "Whatever works for you!"
    },
    {
        "id": "13",
        "name": "Zoey",
        "picture": "https://image.ibb.co/nd0Wbw/zoey_1.jpg",
        "latest_timestamp": "8/12/2017",
        "lastChat": "Will get in touch"
    },
    {
        "id": "14",
        "name": "Ash",
        "picture": "https://image.ibb.co/iasYpG/ash_1.jpg",
        "latest_timestamp": "6/12/2017",
        "lastChat": "Ok"
    },
    {
        "id": "15",
        "name": "Zen",
        "picture": "https://image.ibb.co/eeqWbw/zen_1.jpg",
        "latest_timestamp": "19/11/2017",
        "lastChat": "Lol"
    },
    {
        "id": "16",
        "name": "Uday",
        "picture": "https://image.ibb.co/cA2oOb/alex_1.jpg",
        "latest_timestamp": "10:00 AM",
        "lastChat": "Or maybe not, let me check logistics and call you. Give me sometime"
    },
    {
        "id": "17",
        "name": "Bob",
        "picture": "https://image.ibb.co/gSyTOb/bob_1.jpg",
        "latest_timestamp": "12:30 AM",
        "lastChat": "Alright"
    },
    {
        "id": "18",
        "name": "Luke",
        "picture": "https://image.ibb.co/jOzeUG/luke_1.jpg",
        "latest_timestamp": "4:12 PM",
        "lastChat": "I will look into it"
    },
    {
        "id": "19",
        "name": "Bane",
        "picture": "https://image.ibb.co/cBZPww/bane_1.jpg",
        "latest_timestamp": "7:53 PM",
        "lastChat": "Exactly my point!"
    },
    {
        "id": "20",
        "name": "Darth Vader",
        "picture": "https://image.ibb.co/j4Ov3b/darth_vader_1.png",
        "latest_timestamp": "1:09 PM",
        "lastChat": "Not quite the same."
    },
    {
        "id": "30",
        "name": "Zach",
        "picture": "https://image.ibb.co/b4kxGw/zach_1.jpg",
        "latest_timestamp": "Yesterday",
        "lastChat": "I thought that the event was over long ago"
    },
    {
        "id": "31",
        "name": "Katie",
        "picture": "https://image.ibb.co/eLVWbw/katie_1.jpg",
        "latest_timestamp": "Yesterday",
        "lastChat": "nothing"
    },
    {
        "id": "32",
        "name": "Chloe",
        "picture": "https://image.ibb.co/ncAa3b/chloe_1.jpg",
        "latest_timestamp": "Wednesday",
        "lastChat": "sure i'll take it from you"
    },
    {
        "id": "33",
        "name": "Kennith",
        "picture": "https://image.ibb.co/fQKPww/kennith_1.jpg",
        "latest_timestamp": "Wednesday",
        "lastChat": "Take care, bye"
    },
    {
        "id": "34",
        "name": "Tara",
        "picture": "https://image.ibb.co/dM6hib/tara_1.jpg",
        "latest_timestamp": "Monday",
        "lastChat": "Not today"
    },
    {
        "id": "35",
        "name": "Gary",
        "picture": "https://image.ibb.co/gsF8Ob/gary_1.jpg",
        "latest_timestamp": "Sunday",
        "lastChat": "Whatever works for you!"
    },
    {
        "id": "36",
        "name": "Zoey",
        "picture": "https://image.ibb.co/nd0Wbw/zoey_1.jpg",
        "latest_timestamp": "8/12/2017",
        "lastChat": "Will get in touch"
    },
    {
        "id": "37",
        "name": "Nikhil",
        "picture": "https://image.ibb.co/iasYpG/ash_1.jpg",
        "latest_timestamp": "6/12/2017",
        "lastChat": "Ok"
    },
    {
        "id": "38",
        "name": "Dinesh",
        "picture": "https://image.ibb.co/eeqWbw/zen_1.jpg",
        "latest_timestamp": "19/11/2017",
        "lastChat": "Lol"
    }
  ];