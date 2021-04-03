class DataIndonesia {
  String name;
  String positif;
  String sembuh;
  String meninggal;
  String dirawat;

  DataIndonesia(
      {this.name, this.positif, this.sembuh, this.meninggal, this.dirawat});

  DataIndonesia.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    positif = json['positif'];
    sembuh = json['sembuh'];
    meninggal = json['meninggal'];
    dirawat = json['dirawat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['positif'] = this.positif;
    data['sembuh'] = this.sembuh;
    data['meninggal'] = this.meninggal;
    data['dirawat'] = this.dirawat;
    return data;
  }
}
