import 'package:flutter/material.dart';
import 'package:flutter_application_1/PokemonDataModel.dart';
import 'package:flutter_application_1/Views/PokemonDetailView.dart';

// ignore: must_be_immutable
class PokemonListView extends StatelessWidget {
  List<PokemonDataModel> pokemons = [
    PokemonDataModel(
        name: 'Ivisaur',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png'),
    PokemonDataModel(
        name: 'Venusaur',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png'),
    PokemonDataModel(
        name: 'Charmander',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png'),
    PokemonDataModel(
        name: 'Charmeleon',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png'),
    PokemonDataModel(
        name: 'Charizard',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'),
    PokemonDataModel(
        name: 'Squirtle',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png'),
    PokemonDataModel(
        name: 'Wartortle',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png'),
    PokemonDataModel(
        name: 'Blastoise',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png'),
    PokemonDataModel(
        name: 'Caterpie',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png'),
    PokemonDataModel(
        name: 'Metapod',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png'),
    PokemonDataModel(
        name: 'Butterfree',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png'),
    PokemonDataModel(
        name: 'Weedle',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png'),
    PokemonDataModel(
        name: 'Kakuna',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png'),
    PokemonDataModel(
        name: 'Beedrill',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png'),
    PokemonDataModel(
        name: 'Pidgey',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png'),
    PokemonDataModel(
        name: 'Pidgeotto',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png'),
    PokemonDataModel(
        name: 'Pidgeot',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png'),
    PokemonDataModel(
        name: 'Rattata',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png'),
    PokemonDataModel(
        name: 'Raticate',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png'),
    PokemonDataModel(
        name: 'Spearow',
        image:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: pokemons
            .map((pokemon) => GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PokemonDetailView(pokemon);
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network('${pokemon.image}'),
                      Text('${pokemon.name}'),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
