import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'book.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(
          Icons.arrow_back, 
          color: Colors.black,
          )
          ),

        title: Text(
          "Detail", 
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        ),

        body: ListView(
          children: [
            // Image
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(book.image), fit: BoxFit.cover)
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Center(
                  child: Image.asset(
                    book.image,
                    width: 130,
                    ),
                  ),
              ),
            ),

            // Title
         Container(
           margin: const EdgeInsets.symmetric(vertical: 20),
           child: Center(
             child: Text(
               book.name,
               style:
                   const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
             ),
           ),
         ),
 
         // Informasion
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // Rating
            itemInfo("Rating", book.rate.toString()),
            
            // Page
            itemInfo("Page", book.page.toString()),


            // Language
            itemInfo("Language", book.language),

          ],
         ),
 
         // Description
         Padding(
           padding: const EdgeInsets.all(20),
           child: Text(book.description, textAlign: TextAlign.justify,),
         )

          ],
        ),
    );
  }

  Column itemInfo(String infoName, String infoData) {
    return Column(
            children: [
              Text(
                infoData,
                style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600
                ),
              ),
              Text(
                infoName,
                style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500
                ),
              ),
            ],
          );
  }
}