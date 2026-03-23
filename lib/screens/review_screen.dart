import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reseña")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Hablanos sobre: \"Titulo\"", style: TextStyle(fontSize: 20)), 
            SizedBox(height: 20),
            Container(height: 150, width: 150, color: Colors.grey, child: Center(child: Text("PORTADA"))), 
            SizedBox(height: 20),
            TextField(maxLines: 4, decoration: InputDecoration(hintText: "Escribe aquí...", border: OutlineInputBorder())), 
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Enviar")), 
                ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Cancelar")), 
              ],
            )
          ],
        ),
      ),
    );
  }
}