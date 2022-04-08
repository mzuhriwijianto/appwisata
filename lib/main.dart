import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Main Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<MyHomePage> { //Menampilkan bilangan 1 sampai dengan 10
//   int _counter = 1;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       if(_counter>10){
//         _counter = 1;
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Hello World',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class _MyHomePageState extends State<MyHomePage> { //Menampilkan bilangan Ganjil Atau Genap
//   int _counter = 1;
//   String _text = "Ganjil";
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       if(_counter>10){
//         _counter = 1;
//       }
//
//       if(_counter%2 == 0){
//         _text = "Genap";
//       }else{
//         _text = "Ganjil";
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Hello World',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Text(
//               _text,
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class _MyHomePageState extends State<MyHomePage> { //Menampilkan bilangan Ganjil mulai dari 1 sampai n
//   int _counter = 1;
//   String _text = "Ganjil";
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       if(_counter>10){
//         _counter = 0;
//       }
//       _text = "Ganjil: ";
//       for(int i=0; i<=_counter; i++){
//         if(i%2 != 0){
//           _text += '${i}, ';
//         }
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Hello World',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Text(
//               _text,
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

class _MyHomePageState extends State<MyHomePage> { //Menampilkan bilangan Prima
  int _counter = 0;
  String _text = "Ganjil";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10){
        _counter++;
      }
      _text = "Prima: ";
      int x, y, z;

      if (_counter > 100){
        _counter = 1;
      }

      for (x = 2; x <= _counter; x++){
        y = 0;
        for (z = 2; z < x; z++){
          if (x % z == 0){
            y = 1;
          }
        }
        if (y == 0){
          _text += "${x}, ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
