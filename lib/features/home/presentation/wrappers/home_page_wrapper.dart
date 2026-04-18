import 'package:bolivia_tourism_app/features/home/presentation/cubits/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_colors.dart';
import '../../../../di/di.dart';
import '../cubits/home_cubit.dart';
import '../pages/home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(create: (_) => getIt<HomeCubit>()..fetchHomeData(), child: const _HomePageContent());
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                action: SnackBarAction(label: 'Retry', onPressed: () => context.read<HomeCubit>().retryFetch()),
              ),
            );
          },
        );
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const _HomeLoadingWidget(),
            loading: () => const _HomeLoadingWidget(),
            refreshing: (data) => HomePageWidget(destinations: data.destinations, experiences: data.experiences),
            success: (data) => HomePageWidget(destinations: data.destinations, experiences: data.experiences),
            error: (message) => _HomeErrorWidget(message: message),
          );
        },
      ),
    );
  }
}

class _HomeLoadingWidget extends StatelessWidget {
  const _HomeLoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.surfaceSoft,
        title: Text('Loading...', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}

class _HomeErrorWidget extends StatelessWidget {
  final String message;

  const _HomeErrorWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('Error loading app', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(message, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: () => context.read<HomeCubit>().retryFetch(), child: const Text('Try Again')),
          ],
        ),
      ),
    );
  }
}
