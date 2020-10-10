import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered View'),
      ),
      body: Scrollbar(
        controller: scrollController,
        child: CustomScrollView(
          controller: scrollController,
          slivers: <Widget>[
            SliverStaggeredGrid.countBuilder(
              key: ValueKey('value'),
              itemCount: 20,
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  key: ValueKey('valuekey$index'),
                  width: 100,
                  height: 100,
                  color: Colors.black,
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.fit(1);
              },
            ),
            SliverStaggeredGrid.countBuilder(
              key: ValueKey('value2'),
              itemCount: 100,
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                   key: ValueKey('as$index'),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.fit(1);
              },
            ),
            SliverStaggeredGrid.countBuilder(
              key: ValueKey('value3'),
              itemCount: 100,
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                   key: ValueKey('valusekey$index'),
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.fit(1);
              },
            ),
            
            SliverStaggeredGrid.countBuilder(
              itemCount: 100,
              crossAxisCount: 5,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                   key: ValueKey('dg$index'),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.fit(1);
              },
            ),
            
          ],
        ),
      ),
      
    );
  }
}
