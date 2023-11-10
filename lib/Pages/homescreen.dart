import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/main_drawer_navigation.dart';
import '../widgets/quick_actions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final String title = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Image.asset('assets/images/LOGO01.png'),
              ),
            )),
        const SizedBox(height: 40),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const QuickActions(),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/auth');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        textStyle: Theme.of(context).textTheme.bodyLarge),
                    child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
