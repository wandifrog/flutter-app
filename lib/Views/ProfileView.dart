import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: CircleAvatar(
              radius: 65,
              backgroundImage:
                  AssetImage('lib/Assets/Images/profile-picture.png'),
            ),
          ),
          Text(
            'Wandi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            'wandifrog@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return PokemonDetailView();
//                     }));