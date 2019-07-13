import 'package:flutter/material.dart';
import 'dart:math';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {

  List<Color> colorsList = [
    Colors.red,
    Colors.teal,
    Colors.deepOrange,
    Colors.indigo,
    Colors.brown,
    Colors.purple,
  ];

  Color _getRandomColor(){
    return colorsList[ Random().nextInt(colorsList.length) ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                _authorRow(),
                SizedBox(height: 16,),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/placeholder.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Michael Adams', style: TextStyle(color: Colors.grey,),),
                SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    Text('15 min • ', style: TextStyle(color: Colors.grey,)),
                    Text('Lifestyle', style: TextStyle(color: _getRandomColor(),),),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          color: Colors.grey,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 125,
          height: 120,
          decoration: BoxDecoration(image: DecorationImage(
              image: ExactAssetImage('assets/images/placeholder.jpg'),fit: BoxFit.cover
          ),),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                  'Tech Tent: Old phones and safe social',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)
              ),
              SizedBox(height: 7,),
              Text(
                'We also talk about the future of work as the robots advance, and we ask whether a retro phone',
                style: TextStyle(color: Colors.grey, height: 1.20),
              ),
            ],
          ),
        )
      ],
    );
  }
}
