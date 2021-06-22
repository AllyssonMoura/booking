import 'package:booking/models/place.dart';
import 'package:booking/provider/places.dart';
import 'package:booking/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Booking"), centerTitle: true),
        body: ListView.builder(
            padding: EdgeInsets.only(top: 15),
            itemBuilder: builder,
            itemCount: listOfPlaces.length));
  }

  Widget builder(BuildContext context, int index) {
    Place place = listOfPlaces.elementAt(index);
    return ListTile(
      leading: Image.asset(place.photo),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(children: [
                Text(place.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
              ]),
              SizedBox(width: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                FaIcon(FontAwesomeIcons.solidStar, color: starTheme, size: 13),
                SizedBox(width: 5),
                FaIcon(FontAwesomeIcons.solidStar, color: starTheme, size: 13),
                SizedBox(width: 5),
                FaIcon(FontAwesomeIcons.solidStar, color: starTheme, size: 13),
                SizedBox(width: 5),
                FaIcon(FontAwesomeIcons.solidStar, color: starTheme, size: 13),
                SizedBox(width: 5),
                FaIcon(FontAwesomeIcons.solidStar, color: starTheme, size: 13),
              ])
            ],
          ),
          SizedBox(height: 5),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(children: [
              Container(
                  child: Text(place.points.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  decoration: BoxDecoration(
                      color: pointsTheme,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(5))
            ]),
            Column(children: [
              place.extra1,
              Text(place.text1,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700))
            ]),
            Column(children: [
              place.extra2,
              Text(place.text2,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700))
            ]),
            Column(children: [
              place.extra3,
              Text(place.text3,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700))
            ])
          ]),
          SizedBox(height: 5),
          Text(place.description),
          SizedBox(height: 5),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("${place.daily} diárias"),
            Text("R\$ ${place.oldPrice}",
                style: TextStyle(
                    color: place.redColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.lineThrough)),
            Text("R\$ ${place.price}",
                style: TextStyle(
                    color: place.greenColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 25)),
            Container(
                child: Text(place.app.toString(),
                    style: TextStyle(color: Colors.white)),
                decoration: BoxDecoration(
                    color: appTheme, borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(5))
          ]),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
