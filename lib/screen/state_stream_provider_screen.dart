import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/state_stream_provider.dart';

class StateStreamProviderScreen extends ConsumerWidget {
  const StateStreamProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final state = ref.watch(multipleStreamProvider);

    return DefaultLayout(
      title: 'StateStreamProviderScreen',
      body: Center(
        child: state.when(
          data: (data) {
            return Text(data.toString());
          },
          error: (error, stack) {
            return Text(error.toString());
          },
          loading: () {
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
