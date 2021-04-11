import 'package:flutter/material.dart';
import 'package:myapp/game_blueprint.dart';

class GamesDetail extends StatelessWidget {
  final GameBlueprint games;

  GamesDetail({@required this.games});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: Text(games.name),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Row(children: [
                        Icon(
                          Icons.star_rate,
                          color: Colors.yellow[700],
                        ),
                        Text(games.rating.toString())
                      ]),
                    )
                  ],
                )),
            Flexible(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Image.asset(games.imagegame),
              ),
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          margin: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.access_alarm,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              Text(
                                games.release,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.contact_mail,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              Text(
                                games.development,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              Text(
                                games.price,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
