import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Hero Image
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      kIsWeb
                          ? 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&h=400&fit=crop'
                          : 'https://cdn.getyourguide.com/image/format=auto,fit=crop,gravity=auto,quality=60,height=650,dpr=1/tour_img/4244c5dce31a58345390a8aaea197a4b941ed9e4cb98ee853637615457449284.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + AppDimens.spacingSmall,
                left: AppDimens.spacingMedium,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.colors.background,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(Icons.arrow_back, color: context.colors.textPrimary),
                  ),
                ),
              ),
            ],
          ),
          // Activity Content
          Container(
            color: context.colors.background,
            padding: const EdgeInsets.all(AppDimens.spacingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Favorite
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Uyuni Salt Flats',
                            style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Salar de Uyuni, Bolivia',
                            style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() => isFavorited = !isFavorited),
                      child: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: isFavorited ? Colors.red : context.colors.primary,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Text(
                  'The world\'s largest salt flat with stunning mirror reflections and otherworldly landscapes',
                  style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                ),
                const SizedBox(height: AppDimens.spacingLarge),
                // About Section
                Text('About', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
                const SizedBox(height: AppDimens.spacingSmall),
                Container(
                  padding: const EdgeInsets.all(AppDimens.spacingMedium),
                  decoration: BoxDecoration(
                    color: context.colors.surfaceSoft,
                    borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
                    border: Border.all(color: context.colors.border),
                  ),
                  child: Text(
                    'The Salar de Uyuni is the world\'s largest salt flat, covering 10,582 square kilometers in southwestern Bolivia. Located at an elevation of 3,656 meters (12,000 feet) above sea level, it creates a surreal landscape of hexagonal salt formations. During the dry season, it appears as an endless white desert. During the rainy season (December-March), a thin layer of water transforms it into a giant mirror reflecting the sky, creating one of the most spectacular natural phenomena on Earth.',
                    style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textPrimary),
                  ),
                ),
                const SizedBox(height: AppDimens.spacingLarge),
                // Things to Know Section
                Text('Things to Know', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
                const SizedBox(height: AppDimens.spacingSmall),
                _InfoCard(
                  icon: Icons.directions_transit,
                  title: 'How to Get There',
                  content:
                      'Fly to La Paz or Cochabamba, then take a bus or tour to Uyuni (1-2 hours by air from La Paz). Most visitors join organized 3-4 day tours from the town of Uyuni. Accessible via main highways from La Paz and Chile.',
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                _InfoCard(
                  icon: Icons.access_time,
                  title: 'Best Time to Visit',
                  content:
                      'Dry season: May-October for clear skies and hexagonal salt formations. Rainy season: December-March for mirror reflections. Accessible year-round but conditions vary seasonally.',
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                _InfoCard(
                  icon: Icons.local_offer,
                  title: 'Tour Cost',
                  content:
                      'Typical 3-4 day tours: \$200-400 USD per person. Includes accommodation, meals, guide, and 4x4 transportation across the salt flat.',
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                _InfoCard(
                  icon: Icons.phone,
                  title: 'What to Bring',
                  content:
                      'High SPF sunscreen (100+), altitude sickness medication, warm clothing for cold nights, good hiking boots, and a camera for unforgettable photos.',
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimens.radiusSmall)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.bookmark, color: Colors.white),
                        const SizedBox(width: 8),
                        Text('Book Tickets / Reserve', style: AppTextStyles.titleMedium.copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppDimens.spacingLarge),
                // Insider Tips Section
                Text('Insider Tips', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
                const SizedBox(height: AppDimens.spacingSmall),
                _TipItem(number: '1', text: 'Acclimatize in La Paz for 1-2 days to adjust to the 3,656m altitude'),
                const SizedBox(height: AppDimens.spacingSmall),
                _TipItem(
                  number: '2',
                  text: 'Book tours with reputable agencies to ensure safety and quality experience',
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                _TipItem(number: '3', text: 'Start tours early in the morning to maximize daylight and catch sunrise'),
                const SizedBox(height: AppDimens.spacingSmall),
                _TipItem(
                  number: '4',
                  text: 'During rainy season, bring proper waterproof gear for the muddy conditions',
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                _TipItem(
                  number: '5',
                  text: 'Bring adequate water and snacks - the remote landscape offers little shelter',
                ),
                const SizedBox(height: AppDimens.spacingLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const _InfoCard({required this.icon, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.spacingMedium),
      decoration: BoxDecoration(
        color: context.colors.surfaceSoft,
        borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
        border: Border.all(color: context.colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: context.colors.primary, size: 24),
              const SizedBox(width: 12),
              Text(title, style: AppTextStyles.titleSmall.copyWith(color: context.colors.textPrimary)),
            ],
          ),
          const SizedBox(height: 8),
          Text(content, style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary)),
        ],
      ),
    );
  }
}

class _TipItem extends StatelessWidget {
  final String number;
  final String text;

  const _TipItem({required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(color: context.colors.primary, shape: BoxShape.circle),
          child: Center(
            child: Text(
              number,
              style: AppTextStyles.labelMedium.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(width: AppDimens.spacingMedium),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(text, style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary)),
          ),
        ),
      ],
    );
  }
}
