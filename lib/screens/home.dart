import "package:flutter/material.dart";
import "package:projet2/screens/menu.dart";

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Menu(),
      appBar: AppBar(title:  Text("Home", style: TextStyle(color: Colors.white),), backgroundColor: Colors.lightBlue, iconTheme:IconThemeData(color: Colors.white) ,),
      body:  Center(
        child: Column(
          children: [
            SizedBox(height: 50.0),
            Image.asset("assets/images/homepage.jpg"),
            SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.all(20.0), // Ajustez la valeur selon vos besoins
            child: Text(
              "Activation functions are crucial in deep learning models as they introduce non-linearity, enabling the network to learn complex patterns. Here's a brief overview of some common activation functions:\n\n"
                  "Sigmoid Activation Function: The sigmoid function is often used in binary classification problems at the output layer.\n\n"
                  "Hyperbolic Tangent (tanh) Activation Function: Similar to the sigmoid, tanh has a range from -1 to 1 and is employed to address gradient-related issues.\n\n"
                  "Rectified Linear Unit (ReLU): ReLU is a popular choice for hidden layers due to its simplicity and effectiveness.\n\n",
              textAlign: TextAlign.justify, // Alignement justifié
            )
          ),
          ],
        )

      )
    );
  }
}
