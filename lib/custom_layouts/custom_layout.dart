// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unnecessary_this

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_custom_components/utils/colors.dart';
import 'package:flutter_custom_components/utils/constants.dart';
import 'package:flutter_custom_components/utils/dimens.dart';

class CustomLayout extends StatefulWidget {
  const CustomLayout({Key? key}) : super(key: key);

  @override
  State<CustomLayout> createState() => _CustomLayoutState();
}

class _CustomLayoutState extends State<CustomLayout> {
  Formations formation = Formations.FOUR_FOUR_TWO;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FootballPitchBackgroundView(),
          // FormationViewForFourFourTwo()
          // FormationViewForFourTwoThreeOne(),
          // FormationViewForFourThreeThree(),
          // FormationViewForThreeFourThree(),
          FormationView(formation: this.formation),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            formation =
                Formations.values[Random().nextInt(Formations.values.length)];
          });
        },
      ),
    );
  }
}

class FootballPitchBackgroundView extends StatelessWidget {
  const FootballPitchBackgroundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Boisko.svg/1200px-Boisko.svg.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}

class PlayerView extends StatelessWidget {
  final bool isGoalKeeper;
  PlayerView({this.isGoalKeeper = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        width: MARGIN_LARGE,
        height: MARGIN_LARGE,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: isGoalKeeper ? Colors.yellow : CHELSEA_BLUE_COLOR,
        ),
      )),
    );
  }
}

class FormationViewForFourFourTwo extends StatelessWidget {
  const FormationViewForFourFourTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_XLARGE),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 22,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

class FormationViewForFourThreeThree extends StatelessWidget {
  const FormationViewForFourThreeThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_XLARGE),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 22,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

class FormationViewForThreeFourThree extends StatelessWidget {
  const FormationViewForThreeFourThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_XLARGE),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 22,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

class FormationViewForFourTwoThreeOne extends StatelessWidget {
  const FormationViewForFourTwoThreeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_XLARGE),
      child: Column(
        children: [
          PlayerView(
            isGoalKeeper: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 22,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

class FormationView extends StatelessWidget {
  final Formations formation;
  FormationView({required this.formation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _generateFormation(formation),
    );
  }

  Widget _generateFormation(Formations formation) {
    switch (formation) {
      case Formations.FOUR_FOUR_TWO:
        return FormationViewForFourFourTwo();

      case Formations.FOUR_TWO_THREE_ONE:
        return FormationViewForFourTwoThreeOne();
      case Formations.FOUR_THREE_THREE:
        return FormationViewForFourThreeThree();
      case Formations.THREE_FOUR_THREE:
        return FormationViewForThreeFourThree();
    }
  }
}
