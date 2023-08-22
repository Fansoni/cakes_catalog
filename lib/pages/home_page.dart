import 'package:cakes_catalog/widgets/quality_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Fine quality',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {}),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                }),
          ],
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/1.jpg'),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 100),
                          const Text(
                            'Chocolate cream',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              const Text(
                                '\$88',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
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
                  )),
                  const SizedBox(width: 10.0),
                  Column(
                    children: <Widget>[
                      QualityButton(
                        icon: IconButton(
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {},
                        ),
                        text: '368',
                      ),
                      QualityButton(
                        icon: IconButton(
                          icon: const Icon(
                            Icons.more,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        text: '76',
                      ),
                      QualityButton(
                        icon: IconButton(
                          icon: const Icon(
                            Icons.send,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        text: '18',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Commodity',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width - 20,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
                    for (int i = 1; i <= 6; i++)
                      BuildCardFood(
                        image: 'assets/images/$i.jpg',
                        title: 'Produto nº $i',
                        made: 'Descricao $i',
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
