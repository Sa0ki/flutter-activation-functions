import "package:flutter/material.dart";

class Menu extends StatefulWidget {
   Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}
class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color:  Color.fromRGBO(21, 28, 28, 1.0),
        child: ListView(
          children: [
            drawerHeader(),
            itemMenu(
                "Home",
                Icons.home,
                    () => Navigator.of(context).popAndPushNamed("/")
            ),
            itemMenu(
                "ReLu",
                Icons.functions_outlined,
                    () => Navigator.of(context).popAndPushNamed("relu")
            ),
            itemMenu(
                "Tanh",
                Icons.numbers_sharp,
                    () => Navigator.of(context).popAndPushNamed("tanh")
            ),
            itemMenu(
                "Sigmoid",
                Icons.calculate,
                    () => Navigator.of(context).popAndPushNamed("sigmoide")
            )
          ],
        ),
      ),

    );
  }
}

DrawerHeader drawerHeader(){
  return  DrawerHeader(
    decoration: BoxDecoration(color: Color.fromRGBO(118, 189, 255, 1.0)),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/prof.png"),
            radius: 45,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text("Deep Learning", style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
        Align(
          alignment: Alignment(1.05, 0.4),
          child: Text("Activation Functions", style: TextStyle(fontSize: 13, color: Colors.yellow)),
        )
      ],
    ),
  );
}

Container itemMenu(String titre, IconData icon, VoidCallback? goto){
  return Container(
    margin:  EdgeInsets.only(top: 10),
    child: ListTile(
      leading: Icon(icon, size: 40, color:  Color.fromRGBO(118, 189, 255, 1.0)),
      title: Text(titre, style:  TextStyle(fontSize: 20, color: Colors.white)),
      onTap: goto,
    ),
  );
}
