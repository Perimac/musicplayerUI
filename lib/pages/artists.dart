import 'package:flutter/material.dart';
import 'package:musicplayer/custom_widgets/artists_grid.dart';
import 'package:musicplayer/models/artist_model.dart';
import 'package:musicplayer/pages/billie_eilish.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        children: List.generate(listmodels.length, (index){
          return  ArtisteGrid(
            modelList: listmodels[index],
            onItemTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context){
                  return BillieEilish(
                    artistmodel: listmodels[index],
                  );
                 }
                )
                );
            },
          );
        }),
        ),
    );
  }
}