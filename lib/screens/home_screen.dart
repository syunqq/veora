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
            Text("BIENVENIDO, NOMBRE", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)), 
            Text("Recomendación del dia", style: TextStyle(fontSize: 16, color: Colors.grey)), 
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                color: Colors.grey[800],
                child: Center(child: Text("PORTADA", style: TextStyle(fontSize: 30))), 
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Saber más")), 
                ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/review'), child: Text("Escribir reseña")), 
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
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/donations');
          }
        },
      ),
    );
  }
}