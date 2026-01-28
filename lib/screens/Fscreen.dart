import 'package:api_try/services/api.dart';
import 'package:flutter/material.dart';

class Fscreen extends StatelessWidget {
  const Fscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: Text("My first api"),
            )
          ],
          
        ),
      ),
      body: FutureBuilder(
        future: Api().getData(), 
        builder:(context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(9),
                child: Column(
                  children: [
                    ClipOval(child: Image.network(snapshot.data![index].images!,width: 200,height: 200,),
                    ),
                    SizedBox(height: 12,),
                    Text(
                      snapshot.data![index].title!,
                      style: TextStyle(fontSize: 19,color: Colors.black54),
                      
                    ),
                    Text(
                      snapshot.data![index].brand!,
                    ),
                  ],
                ),
              );
            },
          );
        },),
    );
  }
}
