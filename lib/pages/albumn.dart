import 'package:flutter/material.dart';
import 'package:musicplayer/custom_widgets/albumn_cards.dart';
import 'package:musicplayer/custom_widgets/playlist_card.dart';
import 'package:musicplayer/models/artist_model.dart';
import 'package:musicplayer/models/playlist_model.dart';
import 'package:musicplayer/pages/billie_eilish.dart';
import 'package:musicplayer/pages/now_playing.dart';

class AlbumnPage extends StatelessWidget {
  const AlbumnPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  List.generate(listmodels.length, (index){
                return AlbumnCards(
                  modelList: listmodels[index], 
                  onItemTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return BillieEilish(
                          artistmodel: listmodels[index]
                        );
                      })
                      );
                  },
                );
               }
              )
            ),
          ),

          const SizedBox(height:40),
          const Text("Playlists",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black54
          ),),

         const SizedBox(height:10),
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             crossAxisAlignment:CrossAxisAlignment.start,
             children: List.generate(playlistModels.length, (index) {
               return  PlayListCard(
                 playList: playlistModels[index],
                 onCardClicked: (){
                   Navigator.push(
                     context, 
                     MaterialPageRoute(builder: (context){
                       return NowPlaying(
                         playlist: playlistModels[index],
                       );
                     })
                     );
                 },
                 
                 );
             }
            )
          )
          )
        ],
      ),
    );
  }
}