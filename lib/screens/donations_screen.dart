import 'package:flutter/material.dart';

class DonationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Canjear Puntos")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("¿Dónde quieres canjear tus puntos?", style: TextStyle(fontSize: 18)), // [cite: 86]
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _causeCard("Pozos"), // [cite: 88]
                  _causeCard("Alimentos"), // [cite: 89]
                  _causeCard("XXXXX"), // [cite: 91]
                  _causeCard("XXXXX"), // [cite: 92]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _causeCard(String label) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 60, width: 60, color: Colors.grey[700]),
          SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}