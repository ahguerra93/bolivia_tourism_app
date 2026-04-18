import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/di.dart';
import '../cubits/experience_detail_cubit.dart';
import '../cubits/experience_detail_state.dart';
import '../pages/activity_page.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({required this.experienceId, super.key});
  final String experienceId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ExperienceDetailCubit>()..fetchExperience(experienceId),
      child: _ActivityPage(experienceId: experienceId),
    );
  }
}

class _ActivityPage extends StatelessWidget {
  final String experienceId;

  const _ActivityPage({required this.experienceId});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExperienceDetailCubit, ExperienceDetailState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                action: SnackBarAction(
                  label: 'Retry',
                  onPressed: () => context.read<ExperienceDetailCubit>().retryFetch(experienceId),
                ),
              ),
            );
          },
        );
      },
      child: BlocBuilder<ExperienceDetailCubit, ExperienceDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const _ActivityLoadingWidget(),
            loading: () => const _ActivityLoadingWidget(),
            refreshing: (experience) => ActivityPageWidget(experience: experience),
            success: (experience) => ActivityPageWidget(experience: experience),
            error: (message) => _ActivityErrorWidget(message: message, experienceId: experienceId),
          );
        },
      ),
    );
  }
}

class _ActivityLoadingWidget extends StatelessWidget {
  const _ActivityLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

class _ActivityErrorWidget extends StatelessWidget {
  final String message;
  final String experienceId;

  const _ActivityErrorWidget({required this.message, required this.experienceId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('Error loading experience', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(message, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.read<ExperienceDetailCubit>().retryFetch(experienceId),
              child: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
