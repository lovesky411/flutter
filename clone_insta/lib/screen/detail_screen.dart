import 'package:clone_insta/model/model_movie.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class DetailScreen extends StatefulWidget {
  final Movie movie;

  DetailScreen({required this.movie});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    print('ddddd');
    bool like = false;
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SafeArea(
                child: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/' + widget.movie.poster),
                  fit: BoxFit.cover,
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.1),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                            child: Image.asset('images/' + widget.movie.poster),
                            height: 300,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              '99% 일치 2019 15+ 시즌 1개',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              widget.movie.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(3),
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.play_arrow),
                                  Text('재생')
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(widget.movie.toString()),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(5),
                              child: Text(
                                '출연 : 현빈, 손예진, 서지혜 \n 제작자 : 이정효, 박지은',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 12),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ))
          ],
        ),
        Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                     // like ? Icon(Icons.check) : Icon(Icons.add),
                      Icon(Icons.add),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Text(
                        '내가 찜한 콘텐츠',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                  child: Column(children: <Widget>[
                    Icon(Icons.thumb_up),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('평가', style: TextStyle(fontSize: 11, color: Colors.white60),)
                  ],),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                  child: Column(children: <Widget>[
                    Icon(Icons.send),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('공유', style: TextStyle(fontSize: 11, color: Colors.white60),)
                  ],),
                ),
              )
            ],
          ),
        )
      ],
    ))));
  }
}

Widget makeMenuButton() {
  return Container();
}
