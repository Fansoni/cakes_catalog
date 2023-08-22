import 'package:flutter/material.dart';

class QualityButton extends StatelessWidget {
  final IconButton icon;
  final String text;
  const QualityButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        Text(text),
      ],
    );
  }
}

class BuildCardFood extends StatelessWidget {
  final String image, title, made;
  const BuildCardFood({
    super.key,
    required this.image,
    required this.title,
    required this.made,
  });

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
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(made, style: const TextStyle(color: Colors.grey)),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.grey),
              Text('22', style: TextStyle(color: Colors.grey)),
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.more, color: Colors.grey),
              Text('64', style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}
