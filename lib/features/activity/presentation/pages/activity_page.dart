import 'package:flutter/material.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../data/models/experience_model.dart';

class ActivityPageWidget extends StatefulWidget {
  final ExperienceModel experience;

  const ActivityPageWidget({super.key, required this.experience});

  @override
  State<ActivityPageWidget> createState() => _ActivityPageWidgetState();
}

class _ActivityPageWidgetState extends State<ActivityPageWidget> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Hero Image
          _HeroImageWidget(imageUrl: widget.experience.imageUrl),
          // Activity Content
          Container(
            color: context.colors.background,
            padding: const EdgeInsets.all(AppDimens.spacingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Favorite
                _TitleAndFavoriteWidget(
                  title: widget.experience.name,
                  location: '${widget.experience.name}, Bolivia',
                  isFavorited: isFavorited,
                  onFavoriteToggle: () => setState(() => isFavorited = !isFavorited),
                ),
                const SizedBox(height: AppDimens.spacingMedium),
                Text(
                  widget.experience.description,
                  style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary),
                ),
                const SizedBox(height: AppDimens.spacingLarge),
                // About Section
                Text('About', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
                const SizedBox(height: AppDimens.spacingSmall),
                _AboutCardWidget(description: widget.experience.description),
                const SizedBox(height: AppDimens.spacingLarge),
                // Things to Know Section
                const SizedBox(height: AppDimens.spacingSmall),
                if (widget.experience.experienceInfoModel.transportInstructions.isNotEmpty)
                  _InfoCard(
                    icon: Icons.directions_transit,
                    title: 'How to Get There',
                    content: widget.experience.experienceInfoModel.transportInstructions,
                  ),
                if (widget.experience.experienceInfoModel.bestSeason.isNotEmpty) ...[
                  const SizedBox(height: AppDimens.spacingSmall),
                  _InfoCard(
                    icon: Icons.access_time,
                    title: 'Best Time to Visit',
                    content: widget.experience.experienceInfoModel.bestSeason,
                  ),
                ],
                if (widget.experience.experienceInfoModel.currency.isNotEmpty) ...[
                  const SizedBox(height: AppDimens.spacingSmall),
                  _InfoCard(
                    icon: Icons.local_offer,
                    title: 'Currency & Cost',
                    content: 'Currency: ${widget.experience.experienceInfoModel.currency}',
                  ),
                ],
                if (widget.experience.experienceInfoModel.languages.isNotEmpty) ...[
                  const SizedBox(height: AppDimens.spacingSmall),
                  _InfoCard(
                    icon: Icons.language,
                    title: 'Languages',
                    content: widget.experience.experienceInfoModel.languages.join(', '),
                  ),
                ],
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
                if (widget.experience.experienceInfoModel.tips.isNotEmpty) ...[
                  Text('Insider Tips', style: AppTextStyles.titleLarge.copyWith(color: context.colors.textPrimary)),
                  const SizedBox(height: AppDimens.spacingSmall),
                  ..._buildTipsWidgets(widget.experience.experienceInfoModel.tips),
                  const SizedBox(height: AppDimens.spacingLarge),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTipsWidgets(List<String> tips) {
    return tips
        .asMap()
        .entries
        .expand(
          (entry) => [
            _TipItem(number: (entry.key + 1).toString(), text: entry.value),
            if (entry.key < tips.length - 1) const SizedBox(height: AppDimens.spacingSmall),
          ],
        )
        .toList();
  }
}

class _HeroImageWidget extends StatelessWidget {
  final String imageUrl;

  const _HeroImageWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + AppDimens.spacingSmall,
          left: AppDimens.spacingMedium,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              decoration: BoxDecoration(color: context.colors.background, borderRadius: BorderRadius.circular(50)),
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.arrow_back, color: context.colors.textPrimary),
            ),
          ),
        ),
      ],
    );
  }
}

class _TitleAndFavoriteWidget extends StatelessWidget {
  final String title;
  final String location;
  final bool isFavorited;
  final VoidCallback onFavoriteToggle;

  const _TitleAndFavoriteWidget({
    required this.title,
    required this.location,
    required this.isFavorited,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.headlineLarge.copyWith(color: context.colors.textPrimary)),
              const SizedBox(height: 4),
              Text(location, style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textSecondary)),
            ],
          ),
        ),
        GestureDetector(
          onTap: onFavoriteToggle,
          child: Icon(
            isFavorited ? Icons.favorite : Icons.favorite_border,
            color: isFavorited ? Colors.red : context.colors.primary,
            size: 28,
          ),
        ),
      ],
    );
  }
}

class _AboutCardWidget extends StatelessWidget {
  final String description;

  const _AboutCardWidget({required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.spacingMedium),
      decoration: BoxDecoration(
        color: context.colors.surfaceSoft,
        borderRadius: BorderRadius.circular(AppDimens.radiusMedium),
        border: Border.all(color: context.colors.border),
      ),
      child: Text(description, style: AppTextStyles.bodyMedium.copyWith(color: context.colors.textPrimary)),
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
