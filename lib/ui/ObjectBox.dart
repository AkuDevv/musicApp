import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ObjectBox extends StatelessWidget {

  final String assetPath;
  final String title;
  final String owner;

  ObjectBox({Key? key, required  this.assetPath,required  this.title,required this.owner}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 20,right: 10,bottom: 20),
          child: Card(
            elevation: 10,
            color: Colors.redAccent.withOpacity(0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: 220,
              // height: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.contain,image: AssetImage(assetPath)),
                        ),),),
                    Padding(
                      padding: const EdgeInsets.only(left:11.0,bottom: 10),
                      child: AutoSizeText(title,maxLines: 1,minFontSize: 16,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AutoSizeText('by ' + owner,maxLines: 1,overflow: TextOverflow.ellipsis,style: const TextStyle(color: Colors.white54,fontSize: 13,fontFamily: 'Montserrat'),),
                    ),
                ],
              ),
            ),
          )
        );
  }
}