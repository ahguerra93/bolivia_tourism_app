import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _ActivityCard(
            title: 'Hiking',
            description: 'Mountain trekking adventures',
            icon: Icons.hiking,
          ),
          const SizedBox(height: 16),
          _ActivityCard(
            title: 'Cultural Tours',
            description: 'Explore local traditions',
            icon: Icons.people,
          ),
          const SizedBox(height: 16),
          _ActivityCard(
            title: 'Water Sports',
            description: 'Lake and river activities',
            icon: Icons.water,
          ),
          const SizedBox(height: 16),
          _ActivityCard(
            title: 'Wildlife Safari',
            description: 'Amazon rainforest exploration',
            icon: Icons.pets,
          ),
          const SizedBox(height: 16),
          _ActivityCard(
            title: 'Local Cuisine',
            description: 'Food and cooking experiences',
            icon: Icons.restaurant,
          ),
        ],
      ),
    );
  }
}

class _ActivityCard extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;

  const _ActivityCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  State<_ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<_ActivityCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: 48,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited ? Colors.red : Theme.of(context).primaryColor,
              ),
              onPressed: () {
                setState(() {
                  isFavorited = !isFavorited;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
