import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola button"),
      backgroundColor: Colors.amberAccent,),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:Wrap(
            runSpacing: 10.0,
            spacing: 20.0,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Elevated")),
              ElevatedButton(onPressed: null, child: Text("elevated_Disable")),
              ElevatedButton.icon(onPressed: (){}, label: Text("Elevated_icon"),
              icon: Icon(Icons.access_alarm),),
              FilledButton(onPressed: (){}, child: Text("Filled")),
              FilledButton(onPressed: null, child: Text("Filled_disable")),
              FilledButton.icon(onPressed: (){}, label: Text("Filed_icon"),
              icon: Icon(Icons.abc_rounded),),
              OutlinedButton(onPressed: (){}, child:Text("Out")),
              OutlinedButton(onPressed: null, child:Text("Out_null")),
              OutlinedButton.icon(onPressed: (){}, label: Text("out_icon"),
              icon: Icon(Icons.access_time_filled_sharp),),
              TextButton(onPressed: (){}, child: Text("Text_button")),
              TextButton(onPressed: null, child: Text("Text_button_null")),
              TextButton.icon(onPressed: (){}, label: Text("Text_icon"),
              icon: Icon(Icons.abc),),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_outlined),
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
              iconColor: WidgetStateProperty.all(Colors.cyanAccent)),)


            ],
          ),
        ),
      ),
    );
  }
}
