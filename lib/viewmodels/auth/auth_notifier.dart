import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../providers/auth_service_provider.dart';
import '../../services/auth_service.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  late final AuthService _authService;

  bool _initialized = false;

  @override
  bool build() {
    _authService = ref.read(authServiceProvider);
    if (!_initialized) {
      _initialized = true;
      _init();
    }

    return false;
  }

  Future<void> _init() async {
    final tokenPair = await _authService.getTokenPair();
    if (tokenPair != null) {
      final valid = await _authService.isValidAccessToken;
      if (valid) {
        state = true;
      } else {
        await _authService.clearTokenPair();
        state = false;
      }
    } else {
      state = false;
    }
  }

  Future<void> logIn(String accessToken, String refreshToken) async {
    await _authService.saveTokenPair(
      (accessToken: accessToken, refreshToken: refreshToken),
    );

    state = true;
  }

  Future<void> logOut() async {
    await _authService.clearTokenPair();
    state = false;
  }
}
