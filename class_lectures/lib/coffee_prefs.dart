import 'package:flutter/material.dart';

// To turn stateless widget to a stateful one
// click on the class name and right click to get refactor
// click the option to turn the widget into a stateful one
class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

// you will get a second class that extends stand
class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 0;

  void increaseStrength() {
    // strength += 1; //ternary operator
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
    // build functions needs to run again for the update
  }

  // build functions needs to run again for the update
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const Text("Strength: "),
          Text("$strength"),
          Image.asset(
            "assets/img/coffee_bean.png",
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(child: SizedBox()),
          // const Text("+"),
          FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              onPressed: increaseStrength,
              child: const Text("+"))
        ], //be careful not to invoke the functions by adding ()
        // after their names. RIght now just reference them
      ),
      Row(
        children: [
          const Text("Sugars: "),
          Text("$sugars"),
          Image.asset(
            "assets/img/sugar_cube.png",
            width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(child: SizedBox()),
          // const Text("+"),
          TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
              ),
              onPressed: increaseSugars,
              child: const Text("+"))
        ], //be careful not to invoke the functions by adding ()
        // after their names. RIght now just reference them
      )
    ]);
  }
}
