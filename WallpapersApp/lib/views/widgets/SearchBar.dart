import 'package:flutter/material.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(25),
     ),
      child:const Row(
        children: [
          SizedBox(width:10,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
              hintText:"Search WallPaper",
              hintStyle:TextStyle(color:Colors.teal),
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

              ),

            ),
          ),
          InkWell(child: Icon(Icons.search)),
          SizedBox(width:10,),
        ],
      ),
    );
  }
}
