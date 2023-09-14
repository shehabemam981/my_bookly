import 'package:flutter/material.dart';

import '../../homeview/widgets/itemBestSeller.dart';

class searchbody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.cancel,color: Colors.white,)),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
               hintText: "search of book",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey,),
                borderRadius: BorderRadius.circular(10),
              ) ,
              suffixIcon:Icon(Icons.search,color: Colors.white,),

            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Your search",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 30
          ),),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.all(8.0),
                //  child: itemBestSeller(),
                ),
                itemCount:20 ,),
            ),
          )
        ],
      ),
    );
  }
}
