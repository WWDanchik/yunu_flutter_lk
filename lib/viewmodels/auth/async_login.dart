import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/core/api/error/api_error.dart';
import 'package:yunu_lk_flutter/data/models/api_response.dart';
import 'package:yunu_lk_flutter/data/models/login_result.dart';
import 'package:yunu_lk_flutter/providers/auth_repository_provider.dart';

part 'async_login.g.dart';

@riverpod
class AsyncLogin extends _$AsyncLogin {
  Future<ApiResponse<LoginResult>> _login(String email, String password) async {
    final authRepo = ref.read(authRepositoryProvider);
    return await authRepo.login(email, password);
  }

  @override
  FutureOr<ApiResponse<LoginResult>> build() async {
    throw UnimplementedError();
  }

  Future<ApiResponse<LoginResult>> login(String email, String password) async {
    state = const AsyncValue.loading();

    final asyncResponse = await AsyncValue.guard<ApiResponse<LoginResult>>(
      () async {
        final loginResponse = _login(email, password);

        return loginResponse;
      },
    );

    state = asyncResponse;

    if (asyncResponse.hasError) {
      return ApiResponse.error(
        errors: [ApiError(message: asyncResponse.error.toString())],
      );
    }

    return asyncResponse.value!;
  }
}
