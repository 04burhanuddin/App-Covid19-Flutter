import 'package:covid19_indonesia/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoronaVirus(),
    );
  }
}

class CoronaVirus extends StatefulWidget {
  @override
  _CoronaVirusState createState() => _CoronaVirusState();
}

class _CoronaVirusState extends State<CoronaVirus> {
  Future<DataIndonesia> dataIndonesia;

  Future<DataIndonesia> getDataIndonesia() async {
    var dio = Dio();
    final response = await dio.get('https://api.kawalcorona.com/indonesia/');
    print(response.data);
    if (response.statusCode == 200) {
      return DataIndonesia.fromJson(response.data[0]);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    dataIndonesia = getDataIndonesia();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Covid Indonesia"),
      )),
      body: FutureBuilder<DataIndonesia>(
        future: dataIndonesia,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.count(
              padding: const EdgeInsets.all(30),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              // for 2 colum
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Positif : ${snapshot.data.positif}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Direawat : ${snapshot.data.dirawat}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Sembuh : ${snapshot.data.sembuh}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green[700],
                  height: 200,
                  child: Center(
                    child: Text(
                      'Meninggal : ${snapshot.data.meninggal}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
