import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_transparente/features/tourism/presentation/tourism_controller.dart';

class TourismScreen extends ConsumerWidget {
  const TourismScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final departmentsState = ref.watch(tourismControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explorar Colombia'),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: departmentsState.when(
        data: (departmens) {
          return ListView.builder(
            itemCount: departmens.length,
            itemBuilder: (context, index) {
              final dept = departmens[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(
                    dept.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    dept.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
