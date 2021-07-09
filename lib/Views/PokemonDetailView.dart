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
        title: Text('Pokemon Detail Screen'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('${this.image}'),
                Text('asdasd'),
                Text('asdasd'),
                Text('asdasd'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
