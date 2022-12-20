import 'package:flutter/material.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/screen/state_auto_dispose_modifier_screen.dart';
import 'package:flutter_state_riverpod/screen/state_family_modifier_screen.dart';
import 'package:flutter_state_riverpod/screen/state_future_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/state_notifier_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/state_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/state_stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateProviderScreen(),
                ),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateNotifierProviderScreen(),
                ),
              );
            },
            child: const Text('StateNotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateFutureProviderScreen(),
                ),
              );
            },
            child: const Text('StateFutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateStreamProviderScreen(),
                ),
              );
            },
            child: const Text('StateStreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateFamilyModifierScreen(),
                ),
              );
            },
            child: const Text('StateFamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateAutoDisposeModifierScreen(),
                ),
              );
            },
            child: const Text('StateAutoDisposeModifierScreen'),
          ),
        ],
      ),
    );
  }
}
