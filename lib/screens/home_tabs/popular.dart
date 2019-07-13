import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, position){
      return Card(
        child:  _drawSingleRowCard(),
      );
    },itemCount: 20,);
  }

  // ------ Start Draw Widgets Card ------ //
  Widget _drawSingleRowCard(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
              height: 100,
              width: 134,
              child: Image(image: ExactAssetImage('assets/images/placeholder.jpg'), fit: BoxFit.cover,)
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Column(
                children: <Widget>[
                  Text(
                    'The Woeld Global Warming Annual Sumit', maxLines: 2,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Mo Magdy',style: TextStyle(fontSize: 12, color: Colors.black45),),
                      Row(
                        children: <Widget>[
                          Icon(Icons.timer,size: 15, color: Colors.black45),
                          Text(' 15 Min',style: TextStyle(fontSize: 12, color: Colors.black45),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}


