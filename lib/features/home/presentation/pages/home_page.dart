import 'package:bolivia_tourism_app/config/routing/router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.surfaceSoft,
        centerTitle: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          // spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.75,
              child: SvgPicture.network(
                'https://upload.wikimedia.org/wikipedia/commons/4/48/Flag_of_Bolivia.svg',
                height: 20,
              ),
            ),
            Icon(Icons.location_on_outlined, color: context.colors.primary, size: 26),
            Text(
              'Discover Bolivia',
              style: GoogleFonts.comfortaa(
                textStyle: AppTextStyles.titleLarge.copyWith(
                  color: context.colors.textPrimary,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: context.colors.textPrimary),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Search Bar Section
          Container(
            padding: const EdgeInsets.only(
              left: AppDimens.spacingMedium,
              right: AppDimens.spacingMedium,
              bottom: AppDimens.spacingMedium,
            ),
            color: context.colors.textOnPrimary,
            child: SafeArea(
              top: true,
              bottom: false,
              right: false,
              left: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(top: AppDimens.spacingMedium),
                  //   child: Text(
                  //     'Discover Bolivia',
                  //     style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary),
                  //   ),
                  // ),
                  const SizedBox(height: AppDimens.spacingMedium),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search cities or destinations...',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: context.colors.surfaceSoft,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppDimens.radiusSmall),
                        borderSide: BorderSide(color: context.colors.border),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppDimens.radiusSmall),
                        borderSide: BorderSide(color: context.colors.border),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimens.spacingMedium),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppDimens.spacingMedium),
          // Experiences Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
            child: Text(
              'Experiences you can\'t miss',
              style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary),
            ),
          ),
          const SizedBox(height: AppDimens.spacingMedium),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
              children: [
                _ExperienceCarouselItem(
                  title: 'Uyuni Salt Flats',
                  description: 'World\'s largest salt flat',
                  tag: 'Natural Wonder',
                  tagColor: const Color(0xFF00796B),
                  onTap: () => context.push(AppRoutes.activity),
                  imageUrl: kIsWeb
                      ? 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&h=400&fit=crop'
                      : 'https://cdn.getyourguide.com/image/format=auto,fit=crop,gravity=auto,quality=60,height=650,dpr=1/tour_img/4244c5dce31a58345390a8aaea197a4b941ed9e4cb98ee853637615457449284.jpg',
                ),
                const SizedBox(width: AppDimens.spacingMedium),
                _ExperienceCarouselItem(
                  title: 'Salt Sculpture Museum',
                  description: 'Museum built from salt',
                  tag: 'Museum',
                  tagColor: const Color(0xFF7C4DFF),
                  imageUrl: kIsWeb
                      ? 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?w=600&h=400&fit=crop'
                      : 'https://one-million-places.com/wp-content/uploads/2015/bolivien/uyuni-eisenbahnfriedhof-13.jpg',
                ),
                const SizedBox(width: AppDimens.spacingMedium),
                _ExperienceCarouselItem(
                  title: 'Valle de Rocas',
                  description: 'Otherworldly rock formations',
                  tag: 'Scenic Spot',
                  tagColor: const Color(0xFFE53935),
                  imageUrl: kIsWeb
                      ? 'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=600&h=400&fit=crop'
                      : 'https://www.dejarlotodoparaviajar.com/wp-content/uploads/2018/04/Desierto-Uyuni.jpg',
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimens.spacingLarge),
          // Destinations Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium, vertical: AppDimens.spacingMedium),
            child: Text('Destinations', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMedium),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: AppDimens.spacingLarge,
              crossAxisSpacing: AppDimens.spacingLarge,
              childAspectRatio: 0.9,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _DestinationGridItem(
                  title: 'Salar de Uyuni',
                  imageUrl:
                      'https://i.natgeofe.com/n/857a969e-9fe6-4b5e-959f-157ad9fdf7f9/reflection-salar-de-uyuni-bolivia.jpg',
                  onTap: () => context.push(AppRoutes.city),
                ),
                _DestinationGridItem(
                  title: 'La Paz',
                  imageUrl: kIsWeb
                      ? 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&h=400&fit=crop'
                      : 'https://unifranz.edu.bo/wp-content/uploads/2021/09/lapaz-vista-panorama.jpg',
                ),
                _DestinationGridItem(
                  title: 'Santa Cruz',
                  imageUrl: kIsWeb
                      ? 'https://images.unsplash.com/photo-1495521821757-a1efb6729352?w=400&h=400&fit=crop'
                      : 'https://www.gmsantacruz.gob.bo/images/misio_vision.jpg',
                ),
                _DestinationGridItem(
                  title: 'Tarija',
                  imageUrl: kIsWeb
                      ? 'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=400&h=400&fit=crop'
                      : 'https://www.tarija.bo/wp-content/uploads/2020/05/tarija-view.jpg',
                ),
                _DestinationGridItem(
                  title: 'Oruro',
                  imageUrl: 'https://images.unsplash.com/photo-1500595046891-fad8f32b3d0f?w=400&h=400&fit=crop',
                ),
                _DestinationGridItem(
                  title: 'Cochabamba',
                  imageUrl: 'https://images.unsplash.com/photo-1488646953014-85cb44e25828?w=400&h=400&fit=crop',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExperienceCarouselItem extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  final Color tagColor;
  final String imageUrl;
  final void Function()? onTap;

  const _ExperienceCarouselItem({
    required this.title,
    required this.description,
    required this.tag,
    required this.tagColor,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  width: double.maxFinite,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DestinationGridItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final void Function()? onTap;

  const _DestinationGridItem({required this.title, required this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            // Content - Centered Title
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.titleMedium.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
