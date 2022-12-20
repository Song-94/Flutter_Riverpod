import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/state_auto_dispose_modifier_provider.dart';

class StateAutoDisposeModifierScreen extends ConsumerWidget {
  const StateAutoDisposeModifierScreen({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final state = ref.watch(autoDisposeModifierProvider);

    return DefaultLayout(
      title: 'StateAutoDisposeModifierScreen',
      body: Center(
        child: state.when(
          data: (data) {
            return Text(
              data.toString(),
            );
          },
          error: (error, stack) {
            Text(
              error.toString(),
            );
          },
          loading: () {
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
