import 'package:flutter/material.dart';
import 'package:flutter_application_1/PokemonDataModel.dart';

// ignore: must_be_immutable
class PokemonDetailView extends StatelessWidget {
  final PokemonDataModel pokemonData;

  PokemonDetailView(this.pokemonData);

  String image =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.pokemonData.name ?? 'Pokemon Detail View'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              '${this.pokemonData.image}',
              height: 300,
              width: 300,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
