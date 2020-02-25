import 'package:flutter/material.dart';

void main(){
  runApp(
    MyAppDos('otra tarea no mas')
  );
}
class MyAppDos extends StatefulWidget{
 @override
 String nuevaTarea;
 MyAppDos(this.nuevaTarea);
 State<MyAppDos> createState(){
   return StateMiApp();
 }
}
class StateMiApp extends State<MyAppDos>{
  List<String> tareas;
  @override
  void initState() { 
    super.initState();
    print('build MiApp');
     tareas = [
    'Hacer el desayuno',
    'Salir a caminar',
    'Escribirle a ......a',
    'Minecraft pa la madrugada con los compas'
  ];
  }
 @override
  Widget build(BuildContext context) {
    print('build MiApp');
    return  MaterialApp(
     title:'MiApp',
     home:Scaffold(
       appBar: AppBar(
         title: Text('Lista'),
         backgroundColor: Colors.red,
       ),//AppBar
       body:Container(
         height: 400.0,
          child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: tareas.length,
         itemBuilder: (context,position){
           return Tarea(tareas[position]);
         },
         //children: tareas.map( (elem) => Tarea(elem) ).toList()
       )
       ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),//Icono del Boton
           backgroundColor: Colors.red,//Cambiar el color
           onPressed:(){
             setState(() {
                    tareas.add(widget.nuevaTarea);
                     print(tareas.length);
             });
             }
         ),
     ),//Scaffold 
   );
  }
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
         backgroundColor: Colors.teal,
       ),//AppBar
       body:Column(
         children: tareas.map( (elem) => Tarea(elem) ).toList()
       ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),//Icono del Boton
           backgroundColor: Colors.teal,//Cambiar el color
           onPressed:(){
              tareas.add('Nueva Tarea');
              print(tareas.length);
             }
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
    return GestureDetector(
      child: Card(
      child: Center(
        child: Text(tarea),
      ),
    ),
    onTap: (){
      print('click en la tarea $tarea');
    },
    onDoubleTap:(){
      print('doble click en la tarea $tarea');
    },
    onLongPress: (){
      print('Long click en la tarea $tarea');
    }
    );
  }
}
  
 