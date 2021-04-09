// part dari widget.dart
part of 'widget.dart';

// Widget ini belum digunakan dikarenakan waktu tidak cukup.
// widget ini nantinya akan saya gunakan di tampilan home dengan memeanfaatkan
// share widget.
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
