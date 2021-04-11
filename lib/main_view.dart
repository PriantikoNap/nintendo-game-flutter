import 'package:flutter/material.dart';
import 'package:myapp/game_blueprint.dart';
import 'package:myapp/games_detail.dart';

class MainView extends StatelessWidget {
  var listMoreThan =
      gameBluePrintList.where((element) => element.rating > 4).toList();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Rekomendasi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            )),
        Flexible(
            flex: 2,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: listMoreThan.map((e) {
                  return FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return GamesDetail(games: e);
                        }));
                      },
                      child: Image.asset(e.imagegame));
                }).toList())),
        Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                "List Games",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            )),
        Flexible(
            flex: 2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: gameBluePrintList.map((e) {
                return FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GamesDetail(games: e);
                      }));
                    },
                    child: Image.asset(e.imagegame));
              }).toList(),
            )),
      ],
    );
  }
}

var gameBluePrintList = [
  GameBlueprint(
      name: "Animal Crossing : New Horizons",
      rating: 5,
      development: "Nintendo",
      imagegame: "images/anch.jpg",
      price: "Rp 650.000,-",
      release: "20 Maret 2020"),
  GameBlueprint(
      name: "Hyrules Warriors: Age Of Calamity",
      rating: 3,
      development: "Nintendo",
      imagegame: "images/ageof.jpg",
      price: "Rp 750.000,-",
      release: "29 April 2020"),
  GameBlueprint(
      name: "Donkey Kong : Country Tropical",
      rating: 3,
      development: "Nintendo",
      imagegame: "images/kong.png",
      price: "Rp 550.000,-",
      release: "1 Mei 2020"),
  GameBlueprint(
      name: "Monster Hunter : Raise",
      rating: 5,
      development: "Nintendo",
      imagegame: "images/monsterhunter.jpg",
      price: "Rp 750.000,-",
      release: "30 Maret 2021"),
  GameBlueprint(
      name: "Super Smash Bros : Ultimate",
      rating: 5,
      development: "Nintendo",
      imagegame: "images/smashbros.jpeg",
      price: "Rp 750.000,-",
      release: "30 Mei 2017"),
  GameBlueprint(
      name: "Zelda : Breath of The Wild",
      rating: 5,
      development: "Nintendo",
      imagegame: "images/zelda.jpeg",
      price: "Rp 750.000,-",
      release: "1 Desember 2017"),
  GameBlueprint(
      name: "Splatoon 2",
      rating: 4,
      development: "Nintendo",
      imagegame: "images/splatoon.jpg",
      price: "Rp 750.000,-",
      release: "1 Januari 2017"),
  GameBlueprint(
      name: "Story of Season : Pioneers Of Olive Town",
      rating: 4,
      development: "Nintendo",
      imagegame: "images/storyofseason.png",
      price: "Rp 750.000,-",
      release: "30 Maret 2021"),
];
