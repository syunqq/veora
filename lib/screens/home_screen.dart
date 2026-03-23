import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("BIENVENIDO, \"NOMBRE\"!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), // [cite: 78]
            Text("Recomendación del dia", style: TextStyle(fontSize: 16, color: Colors.grey)), // [cite: 79]
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                color: Colors.grey[800],
                child: Center(child: Text("PORTADA", style: TextStyle(fontSize: 30))), // [cite: 80]
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Saber más")), // [cite: 81]
                ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/review'), child: Text("Escribir reseña")), // [cite: 82]
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''), // 
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        // Corregido: Ahora usamos una función con llaves {}
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/donations');
          }
        },
      ),
    );
  }
}