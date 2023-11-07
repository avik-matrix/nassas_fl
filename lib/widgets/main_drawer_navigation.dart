// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MainDrawerNavigation extends StatelessWidget {
  const MainDrawerNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,

                  children: [
                    SizedBox(
                      height: 250,
                      child: DrawerHeader(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("John Doe")
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Item 1',
                          style: Theme.of(context).textTheme.bodyLarge),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                    ListTile(
                      title: Text('Item 2',
                          style: Theme.of(context).textTheme.bodyLarge),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Sign Out',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
