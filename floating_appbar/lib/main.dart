import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title ='Floating App Bar';

    return MaterialApp(
      title: title,
      home: Scaffold(
       //No appBar property provided, only the body.
       body: CustomScrollView( 
          slivers: [ 
       //Add the app bar to the CustomScrollView.title/.title. 
          const SliverAppBar( 
            // provide a standard title.
            title: Text(title),
            //Allow the user to reveal the app bar if they begin scrolling
            //back up the list of items.title
               floating: true,
               //Display a placeholder widget to visualize the shrinking size. 
              flexibleSpace: Placeholder (), 
              //Make the initial height of the SilverAppBar larger than normal. 
              expandedHeight: 200,
              ),
           // Next, create a SilverList
           SliverList( 
              //Use  a delegate to build items as theey are scrolled on the scerrn.
              delegate: SliverChildBuilderDelegate(
                //The builder fumction returns a ListTile with a title that
                //displays the index of the current item.
                (context, index) => ListTile(title: Text( 'Item #$index')),
                //Build 1000 ListTiles
                childCount:1000,

               ),
             ),
          ],
         ),
       ),
     );
   }
 }
          
        
      