import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SerachProduct extends StatefulWidget {
   SerachProduct({super.key});

  @override
  State<SerachProduct> createState() => _SerachProductState();
}

class _SerachProductState extends State<SerachProduct> {
  TextEditingController textController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          searchBarUI(),
        ],
      ),
    );
  }
    
    
    
    Widget searchBarUI(){ 
      
      return FloatingSearchBar(
      hint: 'Search.....',
      openAxisAlignment: 0.0,
      width: 600,
      axisAlignment:0.0,
      scrollPadding: EdgeInsets.only(top: 16,bottom: 20),
      elevation: 4.0,
      physics: BouncingScrollPhysics(),
      onQueryChanged: (query){
        //Your methods will be here
      },
      // showDrawerHamburger: false,
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 500),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(icon: Icon(Icons.search),
              onPressed: (){
            print('found data');
              },),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition){
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 200.0,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Home'),
                    // subtitle: Text('more info here........'),
                  ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}