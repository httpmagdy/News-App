import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  // ------ Start Draw Widgets Recent Update Card ------ //
  Widget _drawHeader(){
    TextStyle _headerTitle = TextStyle(fontSize: 19, color: Colors.white);
    TextStyle _headerDescription = TextStyle(color: Colors.grey,);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.30, // = 33 %
      decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/placeholder.jpg'),
            fit: BoxFit.cover,
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Check your internet connection',
              style: _headerTitle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 9,),
            Padding(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Text(
                'Allow Opera to access the network in your firewall or antivirus settings.',
                style: _headerDescription,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories(){
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawSectionTitle('Top Stories'),

          // ------ Start Section Cards ------ //
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawSingleRowCard(),
                  _drawDividerLine(),
                  _drawSingleRowCard(),
                  _drawDividerLine(),
                  _drawSingleRowCard(),
                ],
              ),
            ),
          ),

          _drawSectionTitle('Recent Updates'),

          // ------ Start Section Recent Update Card ------ //
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _drawRecentUpdateCard(Colors.teal),
                _drawRecentUpdateCard(Colors.deepOrange),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ------ Start Draw Widget Section Title ------ //
  Widget _drawSectionTitle(String title){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 11),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }

  // ------ Start Draw Widgets Divider Line ------ //
  Widget _drawDividerLine(){
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Divider(
        height: 1,
        color: Colors.black12,
      ),
    );
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

  // ------ Start Draw Widgets Recent Update Card ------ //
  Widget _drawRecentUpdateCard(Color color){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage('assets/images/placeholder.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 4, bottom: 4),
                    child: Text('SPORT', style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w500),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text('Vettel is Ferrari Number One - Hamilton'),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.timer,size: 15, color: Colors.black45),
                    Text(' 15 Min',style: TextStyle(fontSize: 12, color: Colors.black45),)
                  ],
                )
              ],


            ),

          ),
        ],
      ),
    );
  }
}


















