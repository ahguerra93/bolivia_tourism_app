import 'package:flutter/material.dart';

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _CityCard(
            title: 'La Paz',
            subtitle: 'The capital city',
            icon: Icons.location_city,
          ),
          const SizedBox(height: 16),
          _CityCard(
            title: 'Santa Cruz',
            subtitle: 'Eastern region hub',
            icon: Icons.location_city,
          ),
          const SizedBox(height: 16),
          _CityCard(
            title: 'Cochabamba',
            subtitle: 'City of eternal spring',
            icon: Icons.location_city,
          ),
          const SizedBox(height: 16),
          _CityCard(
            title: 'Potosí',
            subtitle: 'Historic mining city',
            icon: Icons.location_city,
          ),
        ],
      ),
    );
  }
}

class _CityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _CityCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              icon,
              size: 48,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
