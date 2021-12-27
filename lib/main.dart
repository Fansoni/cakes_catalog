import 'package:flutter/material.dart';
import 'search.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/search': (BuildContext context) => SearchPage()
    },
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Fine quality',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: (){
            Navigator.pushNamed(context, '/search');
          }),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 100,),
                          Text(
                            'Chocolate cream',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '\$88',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0
                                ),
                              ),
                              SizedBox(width: 20.0,)  ,
                              Text(
                                '\$196',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 20.0,
                                ),
                              ),  
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                SizedBox(width: 10.0),
                Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.favorite, color: Colors.redAccent), onPressed: (){},),
                          Text('368')
                        ],
                      )
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.more, color: Colors.grey,), onPressed: (){},),
                          Text('76')
                        ],
                      )
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.send, color: Colors.grey,), onPressed: (){},),
                          Text('18')
                        ],
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Commodity', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0,),
                Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width - 20,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: <Widget>[
                      BuildCardFood(image: 'assets/images/2.jpg', made: 'Italy Prodution', title: 'Raspberry',),
                      BuildCardFood(image: 'assets/images/3.jpg', made: 'Made In China', title: 'Mouse',),
                      BuildCardFood(image: 'assets/images/4.jpg', made: 'Italy Prodution', title: 'Fansoni',),
                      BuildCardFood(image: 'assets/images/5.jpg', made: 'Made In China', title: 'Mouse',),
                      BuildCardFood(image: 'assets/images/6.jpg', made: 'Italy Prodution', title: 'Raspberry',),
                      BuildCardFood(image: 'assets/images/1.jpg', made: 'Made In China', title: 'Fansoni',),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildCardFood extends StatelessWidget {
  final image, title, made;
  const BuildCardFood({
    Key key, this.image, this.title, this.made,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(this.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(this.title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(this.made, style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.grey),
              Text('22', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 10.0,),
              Icon(Icons.more, color: Colors.grey),
              Text('64', style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      )
    );
  }
}