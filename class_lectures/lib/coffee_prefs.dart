import 'package:class_lectures/styled_body_text.dart';
import 'package:class_lectures/styled_button.dart';
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
          const StyledBodyText("Strength: "),
          // Text("$strength"),
          for (int i = 0; i < strength; i++)
            Image.asset(
              "assets/img/coffee_bean.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),

          const Expanded(child: SizedBox()),
          // const Text("+"),
          StyledButton(onPressed: increaseStrength, child: const Text("+"))
        ], //be careful not to invoke the functions by adding ()
        // after their names. RIght now just reference them
      ),
      Row(
        children: [
          const StyledBodyText("Sugars: "),

          if (sugars == 0) const StyledBodyText("No sugars...."),
          // Text("$sugars"),
          for (int i = 0; i < sugars; i++)
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
          const Expanded(child: SizedBox()),
          // const Text("+"),
          StyledButton(onPressed: increaseSugars, child: const Text("+"))
        ], //be careful not to invoke the functions by adding ()
        // after their names. RIght now just reference them
      )
    ]);
  }
}
