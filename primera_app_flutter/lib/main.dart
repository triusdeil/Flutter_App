import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget{
  List<String> tareas = [
    'Hacer el desayuno',
    'Salir a caminar',
    'Escribirle a ......a',
    'Minecraft pa la madrugada con los compas'
  ];
  @override
  Widget build(BuildContext context){
    return 
       MaterialApp(
     title:'MiApp',
     home:Scaffold(
       appBar: AppBar(
         title: Text('Lista'),
       ),//AppBar
       body:Column(
         children: tareas.map( (elem) => Tarea(elem) ).toList()
       ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),
           onPressed:(){print('click');}
         ),
     ),//Scaffold 
   );
  }

}

class Tarea extends StatelessWidget{
  String tarea;
  Tarea(this.tarea);
  @override 
  Widget build(BuildContext build){
    return Card(
      child: Center(
        child: Text(tarea),
      ),
    );
  }
}
  
 