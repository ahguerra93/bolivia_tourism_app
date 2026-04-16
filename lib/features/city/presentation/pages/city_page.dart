import 'package:bolivia_tourism_app/config/routing/router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      kIsWeb
                          ? 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&h=300&fit=crop'
                          : 'https://i.natgeofe.com/n/857a969e-9fe6-4b5e-959f-157ad9fdf7f9/reflection-salar-de-uyuni-bolivia.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: const Color(0xFF87CEEB),
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
          Container(
            color: context.colors.background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppDimens.spacingMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salar de Uyuni',
                        style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary),
                      ),
                      const SizedBox(height: AppDimens.spacingXs),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 16, color: context.colors.textSecondary),
                          const SizedBox(width: 4),
                          Text(
                            'Bolivia',
                            style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.spacingMedium,
                    vertical: AppDimens.spacingSmall,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About', style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary)),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Text(
                        'The Salar de Uyuni is the world\'s largest salt flat, covering over 10,000 square kilometers. Located at 3,656 meters above sea level in southwestern Bolivia, it creates a surreal landscape of white, hexagonal salt formations and offers breathtaking reflections during the rainy season.',
                        style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
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
                          Icon(Icons.info_outline, color: context.colors.primary, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Travel Guide',
                            style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Text(
                        'Best visited during the dry season (May-October) for clear skies and better access. The rainy season (December-March) creates spectacular mirror reflections. Tours typically last 3-4 days and depart from the town of Uyuni. Bring high SPF sunscreen and altitude sickness medication.',
                        style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  child: Text(
                    'Activities (3)',
                    style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary),
                  ),
                ),
                const SizedBox(height: AppDimens.spacingSmall),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                    children: [
                      _ActivityCarouselItem(
                        title: 'Uyuni Salt Flats',
                        description: 'World\'s largest salt flat with mirror reflections',
                        tag: 'Natural Wonder',
                        tagColor: const Color(0xFF00796B),
                        imageUrl: kIsWeb
                            ? 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&h=400&fit=crop'
                            : 'https://cdn.getyourguide.com/image/format=auto,fit=crop,gravity=auto,quality=60,height=650,dpr=1/tour_img/4244c5dce31a58345390a8aaea197a4b941ed9e4cb98ee853637615457449284.jpg',
                        onTap: () => context.push(AppRoutes.activity),
                      ),
                      const SizedBox(width: AppDimens.spacingMedium),
                      _ActivityCarouselItem(
                        title: 'Salt Sculpture Museum',
                        description: 'Museum built entirely from salt blocks',
                        tag: 'Museum',
                        tagColor: const Color(0xFF7C4DFF),
                        imageUrl: kIsWeb
                            ? 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?w=600&h=400&fit=crop'
                            : 'https://one-million-places.com/wp-content/uploads/2015/bolivien/uyuni-eisenbahnfriedhof-13.jpg',
                        onTap: () => context.push(AppRoutes.activity),
                      ),
                      const SizedBox(width: AppDimens.spacingMedium),
                      _ActivityCarouselItem(
                        title: 'Valle de Rocas',
                        description: 'Stone valley with otherworldly rock formations',
                        tag: 'Scenic Spot',
                        tagColor: const Color(0xFFE53935),
                        imageUrl: kIsWeb
                            ? 'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=600&h=400&fit=crop'
                            : 'https://www.dejarlotodoparaviajar.com/wp-content/uploads/2018/04/Desierto-Uyuni.jpg',
                        onTap: () => context.push(AppRoutes.activity),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Activities Map',
                        style: AppTextStyles.titleMedium.copyWith(color: context.colors.textPrimary),
                      ),
                      const SizedBox(height: AppDimens.spacingSmall),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: context.colors.surfaceSoft,
                          borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
                          border: Border.all(color: context.colors.border),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.map_outlined, size: 48, color: context.colors.primary),
                              const SizedBox(height: AppDimens.spacingSmall),
                              Text(
                                'Map Placeholder',
                                style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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

class _ActivityCarouselItem extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  final Color tagColor;
  final String imageUrl;
  final void Function()? onTap;

  const _ActivityCarouselItem({
    required this.title,
    required this.description,
    required this.tag,
    required this.tagColor,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 280,
        height: 220,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
          child: Stack(
            children: [
              // Background Image
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                ),
              ),
              // Gradient Overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  ),
                ),
              ),
              // Content
              Padding(
                padding: const EdgeInsets.all(AppDimens.spacingMedium),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tag at the top
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(color: tagColor, borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        tag,
                        style: AppTextStyles.labelSmall.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    // Title and Description at the bottom
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.titleMedium.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: AppTextStyles.bodySmall.copyWith(color: Colors.white70),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
