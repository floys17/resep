import 'package:flutter/material.dart';
import 'resep.dart';
import 'resep_detail.dart';
void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {// 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),// 3
      body: SafeArea(// 4
child: ListView.builder(// 5
  itemCount: Recipe.samples.length,// 6
  itemBuilder: (BuildContext context, int index) {
    // 7
return GestureDetector(
  // 8
  onTap: () {// 9
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {// 10
        return RecipeDetail(recipe: Recipe.samples[index]);
        return Text('Detail page');
      },
    ),
   );
  },// 11
  child: buildRecipeCard(Recipe.samples[index]),
);
return buildRecipeCard(Recipe.samples[index]);
    return Text(Recipe.samples[index].label);
  },
),
        // 4
        ),
    );
  }Widget buildRecipeCard(Recipe recipe) {
  // 1
  return Card(
    // 2
      child: Column(// 3
        children: <Widget>[// 4
          Image(image: AssetImage(recipe.imageUrl)),// 5
          Text(recipe.label),
        ],
      ),
  );
}
}

  // 1
@override
Widget build(BuildContext context) {// 2
  final ThemeData theme = ThemeData();
  // 3
  return MaterialApp(
    // 4
    title: 'Recipe Calculator',
    // 5
    theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            primary: Colors.grey,
            secondary: Colors.black,
        ),
    ),// 6
    home: MyHomePage(title: 'Recipe Calculator'),
  );
}
Widget buildRecipeCard(Recipe recipe) {
  return Card(
    // 1
    elevation: 2.0,
    // 2
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)),
    // 3
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      // 4
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),// 5
          const SizedBox(
            height: 14.0,
          ),// 6
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}

