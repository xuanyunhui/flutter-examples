import 'package:flutter/material.dart';

import 'main.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('BottomModelSheetExample'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.BottomModelSheetExample,
              ),
            ),
            // ListTile(
            //   title: const Text('StylesExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.stylesExample,
            //   ),
            // ),
            // ListTile(
            //   title: const Text('CustomizableExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.customizableExample,
            //   ),
            // ),
            // ListTile(
            //   title: const Text('ButtonBuilderExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.buttonBuilderExample,
            //   ),
            // ),
            // ListTile(
            //   title: const Text('FullOptionsSelectedExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.fullOptionsSelectedExample,
            //   ),
            // ),
            // ListTile(
            //   title: const Text('GenericsExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.genericsExample,
            //   ),
            // ),
            // ListTile(
            //   title: const Text('CommonExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.commonExample,
            //   ),
            // ),
            // ListTile(
            //   title: const Text('ProviderExample'),
            //   onTap: () => Navigator.of(context).pushReplacementNamed(
            //     Routes.providerExample,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
