import 'package:flutter/material.dart';

class SliverAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Collapsible App Bar"),
              background: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.red,
                      Colors.blue,
                      Colors.green,
                    ]
                  )
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context,index) => ListTile(title: Text("Item $index"),)),
          )
        ],
      ),
    );
  }
}