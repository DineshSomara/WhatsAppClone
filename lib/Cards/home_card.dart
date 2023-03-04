import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard( this.contact , {super.key});
  final Map<String, Object> contact;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //Circle Avatar
          Text('${widget.contact["name"]}')
          //Heading and Sub heading_HomeCardState
          //Time and notifications
        ]),
    );
  }
}