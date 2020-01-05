import 'package:chat/models/messages_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Favorite Contacts',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2
          )
          ),
           IconButton( icon: Icon(
                    Icons.more_horiz,
                    ),
                    iconSize: 30.0,
                    color:  Colors.blueGrey,
                        onPressed: () {},
                  )
                ],
           ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context,int index){
              return Padding(
                padding: EdgeInsets.all(6.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage:  AssetImage(favorites[index].imageurl),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      favorites[index].name, style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              );
            }
          ),
        )
      ],
    );
  }
}