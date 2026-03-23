import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(color: Color(0xFF81C784), borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(radius: 40, backgroundColor: Colors.white70, child: Text("LOGO")), 
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: "USUARIO", filled: true, fillColor: Colors.white)), 
              SizedBox(height: 10),
              TextField(obscureText: true, decoration: InputDecoration(labelText: "CONTRASEÑA", filled: true, fillColor: Colors.white)), 
              TextButton(onPressed: () {}, child: Text("¿Has olvidado tu contraseña?", style: TextStyle(color: Colors.black54))), 
              ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/home'), child: Text("REGISTRARSE")), 
              SizedBox(height: 15),
              ElevatedButton(onPressed: () {}, child: Text("CONTINUAR"), style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black)), // [cite: 105]
            ],
          ),
        ),
      ),
    );
  }
}