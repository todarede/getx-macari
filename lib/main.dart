import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_macari/contador_controller.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final ContadorController controller = Get.put(ContadorController());

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quantas vezes vc apertou o botao?',
            ),
            Obx(() => Text(
                  "${controller.contador}",
                  style: Theme.of(context).textTheme.headline4,
                ))
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(width: 50,),
          FloatingActionButton(
            onPressed: () => controller.diminui(),
            tooltip: 'SOMA',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: () => controller.soma(),
            tooltip: 'SOMA',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
