import 'package:flutter/material.dart';

void main() => runApp(AppCanina());

class AppCanina extends StatelessWidget {
  const AppCanina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Paw",
      home: Mascotas(),
    );
  }
} //fin clase AppCanina

class Mascotas extends StatelessWidget {
  const Mascotas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuidadora canina"),
        backgroundColor: Colors.lightGreen,
        actions: [Icon(Icons.more), Icon(Icons.camera)],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrado Vertical
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                // Degradado: Azul Claro a Azul Oscuro
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF81D4FA), Color(0xFF0277BD)],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // Para que el Row no ocupe todo el ancho
                  children: [
                    // Avatar
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/NicolasRios12/IAMoviles_Act5_AppBarCard/refs/heads/main/Nicolas.png',
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Textos
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Nicolas Rios',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Cuidador',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
