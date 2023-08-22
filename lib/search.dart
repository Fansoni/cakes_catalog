import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: (){
          Navigator.pop(context);
        },),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.white,
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Looking for your food',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.black,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text('History record', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                SizedBox(height: 15.0,),
                Wrap(
                  verticalDirection: VerticalDirection.down,
                  direction: Axis.horizontal,
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.0, color: Colors.grey)
                      ),
                      child: Text('Milk'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.0, color: Colors.grey)
                      ),
                      child: Text('Banana'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.0, color: Colors.grey)
                      ),
                      child: Text('Chocolate'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.0, color: Colors.grey)
                      ),
                      child: Text('Cake Class'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 1.0, color: Colors.grey)
                      ),
                      child: Text('Dessert'),
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        BuildCardCake(height: 250.0, favorite: true, image: 'assets/images/6.jpg',),
                        SizedBox(height: 10.0,),
                        BuildCardCake(height: 250.0, favorite: false, image: 'assets/images/3.jpg',),
                        SizedBox(height: 10.0,),
                        BuildCardCake(height: 250.0, favorite: true, image: 'assets/images/1.jpg',),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        BuildCardCake(height: 200.0, favorite: false, image: 'assets/images/2.jpg',),
                        SizedBox(height: 10.0,),
                        BuildCardCake(height: 200.0, favorite: true, image: 'assets/images/5.jpg',),
                        SizedBox(height: 10.0,),
                        BuildCardCake(height: 200.0, favorite: false, image: 'assets/images/4.jpg',),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildCardCake extends StatelessWidget {
  final height, favorite, image;
  const BuildCardCake({
    Key key, this.height, this.favorite, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: (MediaQuery.of(context).size.width - 20)/2 - 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(this.image),
          fit: BoxFit.cover
        )
      ),
      child: Align(
        alignment: Alignment(0.9, -0.9),
        child: Icon(Icons.favorite, size: 30.0, color: (this.favorite)?Colors.red:Colors.white),
      ),
    );
  }
}