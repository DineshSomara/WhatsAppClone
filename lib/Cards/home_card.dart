import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard( this.contact , {super.key});
  final Map<String, String> contact;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  late String? lastChat = widget.contact["lastChat"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: const BoxDecoration(
          
        ),
        child: Container(
          child: Row(
            children: [
              //Circle Avatar
              CircleAvatar(
                backgroundImage: NetworkImage('${widget.contact["picture"]}'),
                radius: 25,
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.contact["name"]}', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text('$lastChat'.length > 30 ? "${'$lastChat'.substring(0,30)}..." : '$lastChat')
                    ],
                ),
              ),
              //Heading and Sub heading_HomeCardState
              //Time and notifications
            ]),
        ),
      ),
    );
  }
}