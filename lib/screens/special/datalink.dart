class datalink{
  int? id;
  String? plot;
  String? link;
  String? image;

  datalink(
      {
        this.id,
        this.link,
        this.plot,
        this.image
      });

  datalink.fromJson(Map<String,dynamic> json)
  {
    id = json['id'];
    link = json['link'];
    plot = json['plot'];
    image = json['image'];
  }
}