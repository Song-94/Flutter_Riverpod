import 'package:flutter_riverpod/flutter_riverpod.dart';

// FutureProvider 캐싱 기능 지원.
// .when 을 지원
final multiplesFutureProvider = FutureProvider<List<int>>(
  (ref) async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    // throw Exception('에러입니다.');

    return [1, 2, 3, 4, 5];
  },
);
