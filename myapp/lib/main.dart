import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MovieApp(),
  ));
}

class MovieApp extends StatefulWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c262f),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B2C3B),
        elevation: 0.0,
        title: Text('Movie App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 40.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "All",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Action",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Adventure",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Chip(
                      label: Text(
                        "Comedie",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Top Trends',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        fontSize: 26.0),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//Lets create a custom widget

  Widget MovieCard(String Title, String Rate, String imgPath) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            Title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            Rate,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
