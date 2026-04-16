import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Bolivia')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.public, size: 64, color: Theme.of(context).primaryColor),
              const SizedBox(height: 24),
              Text('Discover Bolivia', style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 16),
              Text(
                'Explore the beauty and culture of Bolivia through our tourism app.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 32),
              ElevatedButton(onPressed: () {}, child: const Text('Get Started')),
            ],
          ),
        ),
      ),
    );
  }
}
