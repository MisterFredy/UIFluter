import 'package:chat/models/messages_model.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
                      child: Container(
                         decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)
                          )
                          ),
                          child:  ClipRRect(
                            borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)
                          ),
                            child: ListView.builder(
                              itemCount: chats.length,
                              itemBuilder: (BuildContext context, int index){
                                 final Message chat = chats[index];
                                return Container(
                                  margin: EdgeInsets.only(top: 10,bottom: 10),
                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                                    borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                            radius: 35.0,
                                            backgroundImage: AssetImage(chat.sender.imageurl),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  chat.sender.name,
                                                  style: TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              ),
                                              SizedBox(width: 10.0),
                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.55,
                                                child: Text(
                                                  chat.text,
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(children: <Widget>[
                                        Text(chat.time, 
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        chat.unread ? 
                                        Container(
                                          width: 40,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).primaryColor,
                                            borderRadius: BorderRadius.circular(30)
                                            ),
                                            alignment: Alignment.center,
                                        child:  Text(
                                          'New',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                          )
                                        : SizedBox.shrink(),
                                      ],
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                      ),
                    );
  }
}