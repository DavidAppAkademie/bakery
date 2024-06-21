import 'package:bakery/src/features/baking_time/application/calc.dart';
import 'package:flutter/material.dart';

class BakerScreen extends StatefulWidget {
  const BakerScreen({super.key});

  @override
  State<BakerScreen> createState() => _BakerScreenState();
}

class _BakerScreenState extends State<BakerScreen> {
  // State
  // ...
  String? backware;
  int? temp;

  int? minutes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownMenu(
                onSelected: (value) {
                  backware = value;
                },
                width: 200,
                label: const Text("Backware"),
                dropdownMenuEntries: const [
                  DropdownMenuEntry<String>(value: "Brot", label: "Brot"),
                  DropdownMenuEntry<String>(value: "Kuchen", label: "Kuchen"),
                  DropdownMenuEntry<String>(value: "Kekse", label: "Kekse"),
                ],
              ),
              const SizedBox(height: 16),
              DropdownMenu(
                onSelected: (value) {
                  temp = value;
                },
                width: 200,
                label: const Text("Temp"),
                dropdownMenuEntries: const [
                  DropdownMenuEntry<int>(value: 180, label: "180"),
                  DropdownMenuEntry<int>(value: 200, label: "200"),
                  DropdownMenuEntry<int>(value: 220, label: "220"),
                ],
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  // Berechne...
                  setState(() {
                    minutes = backzeit(backware!, temp!);
                  });
                },
                child: const Text("Berechne!"),
              ),
              const SizedBox(height: 32),
              minutes == null
                  ? const Text("Bitte auswählen!")
                  : Text(
                      "Die Backware benötigt $minutes Minuten",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
