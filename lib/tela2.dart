import 'package:flutter/material.dart';
import 'package:flutter_macari/contador_controller.dart';
import 'package:get/get.dart';

class Tela2 extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    final ContadorController controller = Get.put(ContadorController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text('ESTA É A TELA 2'),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'CONTOU',
              style: Theme.of(context).textTheme.headline4,
            ),

            //ESSA FUNCAO AQUI Obx é do getX, ela que renderiza o widget alterado...
            
            Obx(
              () => Text(
                "${controller.contador}",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            
            
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            backgroundColor: Colors.red[600],
            heroTag: null,
            onPressed: () => controller.diminui(),
            tooltip: 'SOMA',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green[600],
            heroTag: null,
            onPressed: () => controller.soma(),
            tooltip: 'SOMA',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 20,
          ),          
          FloatingActionButton(
            backgroundColor: Colors.grey[600],
            heroTag: null,
            onPressed: () => Navigator.of(context).pop(),
            tooltip: '',
            child: Text('voltar'),
          ),          
        ],
      ),
    );
  }
}