part of 'widget.dart';

Widget pencegahan() {
  return Container(
    child: GridView.count(
      crossAxisCount: 4,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/avoid.png',
                width: 100,
              ),
              new Text("Hello"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/avoid.png',
                width: 100,
              ),
              new Text("Hello"),
            ],
          ),
        ),
      ],
    ),
  );
}
