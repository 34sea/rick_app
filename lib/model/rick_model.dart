class RickModel {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Location location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  RickModel({required this.created, required this.episode, required this.gender, required this.id, required this.image, required this.location, required this.name, required this.origin, required this.species, required this.status, required this.type, required this.url});

  factory RickModel.fromJson(Map<String, dynamic> json){
    return RickModel(created: json['created'], episode: json['episode'], gender: json['gender'], id: json['id'], image: json['image'], location: json['location'], name: json['name'], origin: json['origin'], species: json['species'], status: json['status'], type: json['type'], url: json['url']);
  }

}


class Origin{
  final String name;
  final String url;

  Origin({required this.name, required this.url});

  factory Origin.fromJson(Map<String, dynamic> json){
    return Origin(name: json['name'], url: json['url']);
  }
}

class Location{
  final String name;
  final String url;

  Location({required this.name, required this.url});

  factory Location.fromJson(Map<String, dynamic> json){
    return Location(name: json['name'], url: json['url']);
  }
}