class PokemonDataModel {
  String? url;
  String? name;
  String? image;

  PokemonDataModel({
    this.url,
    this.name,
    this.image,
  });

  PokemonDataModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    image = json['image'];
  }
}
