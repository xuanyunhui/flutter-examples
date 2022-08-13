import 'package:flutter/material.dart';

import '../drawer.dart';

class BottomModelSheetExample extends StatefulWidget {
  const BottomModelSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomModelSheetExample> createState() =>
      _BottomModelSheetExampleState();
}

class _BottomModelSheetExampleState extends State<BottomModelSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomModelSheetExample'),
      ),
      drawer: const AppDrawer(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(
            text: 'Sample Sheet',
            onClicked: () => showModalBottomSheet(
              // enableDrag: false,
              // isDismissible: false,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (context) => buildSheet(),
            ),
          ),
          TextButton(
            child: const Text("Bottom Model Sheel Example"),
            onPressed: () {},
          ),
        ],
      )),
    );
  }

  Widget buildButton({required String text, required VoidCallback onClicked}) =>
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 16)),
          onPressed: onClicked,
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ));

  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(onTap: () {}, child: child),
      );

  Widget buildSheet() => makeDismissible(
        child: DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.5,
          maxChildSize: 0.9,
          builder: (_, controller) => Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: ListView(
              controller: controller,
              children: const [
                Text(
                    'Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.'),
                Text(
                    'Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.'),
                Text(
                    'Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.Use the Flutter Draggable Modal Bottom Sheet to display extra information within a custom height sheet in Flutter. Adjust the height of the bottom sheet, make the bottom sheet scrollable, make the bottom sheet full screen, and include rounded corners & circular corners to the bottom sheet.'),
              ],
            ),
          ),
        ),
      );
}
