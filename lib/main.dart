import 'package:flutter/material.dart';

void main() => runApp(AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Dylan Lozano",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MiPaginaInicial(),
    );
  } // FIN Widget
} // FIN AppMiTabBar

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} // FIN MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Dylan Lozano"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Gasolina",
                icon: Icon(Icons.ev_station_rounded),
              ),
              Tab(
                text: "Limpieza",
                icon: Icon(Icons.cleaning_services_outlined),
              ),
              Tab(
                text: "Sucursal",
                icon: Icon(Icons.business),
              ),
              Tab(
                text: "Extras",
                icon: Icon(Icons.extension),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text(
                "Magna",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "Lavaparabrisas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "PEMEX Chihuahua",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "Llaveros",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  } // Widget
} // _MiPaginaInicialState
