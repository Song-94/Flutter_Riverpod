import 'package:flutter/material.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/screen/auto_dispose_modifier_screen.dart';
import 'package:flutter_state_riverpod/screen/family_modifier_screen.dart';
import 'package:flutter_state_riverpod/screen/future_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/listen_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/providers_screen.dart';
import 'package:flutter_state_riverpod/screen/state_notifier_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/provider_screen.dart';
import 'package:flutter_state_riverpod/screen/state_select_provider_screen.dart';
import 'package:flutter_state_riverpod/screen/stream_provider_screen.dart';

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
                  builder: (_) => const ProviderScreen(),
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
                  builder: (_) => const FutureProviderScreen(),
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
                  builder: (_) => const FamilyModifierScreen(),
                ),
              );
            },
            child: const Text('StateFamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AutoDisposeModifierScreen(),
                ),
              );
            },
            child: const Text('StateAutoDisposeModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ListenProviderScreen(),
                ),
              );
            },
            child: const Text('StateListenProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StateSelectProviderScreen(),
                ),
              );
            },
            child: const Text('StateSelectProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ProvidersScreen(),
                ),
              );
            },
            child: const Text('ProvidersScreen'),
          ),
        ],
      ),
    );
  }
}
