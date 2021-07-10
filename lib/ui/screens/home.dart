part of 'screens.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<DataIndonesia> dataIndonesia;

  Future<DataIndonesia> getDataIndonesia() async {
    var dio = Dio();
    final response = await dio.get('https://api.kawalcorona.com/indonesia/');
    print(response.data);
    if (response.statusCode == 200) {
      return DataIndonesia.fromJson(response.data[0]);
    } else {
      throw Exception('Gagal mengambil data');
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
      backgroundColor: background,
      appBar: AppBar(
        title: Text("Covid Indonesia"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<DataIndonesia>(
        future: dataIndonesia,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: Center(
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    // Kasus positif
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 34),
                      color: positif,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Positif",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              "${snapshot.data.positif}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Orang",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Kasus dirawat
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 34),
                      color: dirawat,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Dirawat",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              "${snapshot.data.dirawat}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Orang",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Kasus sembuh
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 34),
                      color: sembuh,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Sembuh",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              "${snapshot.data.sembuh}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Orang",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Kasus Meninggal
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 34),
                      color: meninggal,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Meninggal",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              "${snapshot.data.meninggal}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          new Align(
                            alignment: Alignment.topLeft,
                            child: new Text(
                              "Orang",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
