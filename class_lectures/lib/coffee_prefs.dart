import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    print("inc strength by 1");
  }

  void increaseSugars() {
    print("inc sugar by 1");
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const Text("Strength: "),
          const Text("3"),
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
          const Text("3"),
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
