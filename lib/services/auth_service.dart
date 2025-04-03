import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

typedef TokenPair = ({String accessToken, String refreshToken});

class AuthService {
  final flutterSecureStorage = const FlutterSecureStorage();

  Future<String?> get getAccessToken async {
    final accessToken = await flutterSecureStorage.read(key: "accessToken");

    return accessToken;
  }

  Future<String?> get getRefreshToken async {
    final refreshToken = await flutterSecureStorage.read(key: "refreshToken");
    return refreshToken;
  }

  Future<bool> get isValidAccessToken async {
    final tokenPair = await getTokenPair();
    if (tokenPair == null) {
      return false;
    }

    final decodedJwt = JWT.decode(tokenPair.accessToken);
    final expirationTimeEpoch = decodedJwt.payload['exp'];
    final expirationDateTime =
        DateTime.fromMillisecondsSinceEpoch(expirationTimeEpoch * 1000);

    final marginOfErrorInMilliseconds = 1000;
    final addedMarginTime = Duration(milliseconds: marginOfErrorInMilliseconds);

    return DateTime.now().add(addedMarginTime).isBefore(expirationDateTime);
  }

  Future<TokenPair?> getTokenPair() async {
    final accessToken = await getAccessToken;
    final refreshToken = await getRefreshToken;

    if (accessToken != null && refreshToken != null) {
      return (accessToken: accessToken, refreshToken: refreshToken);
    }

    return null;
  }

  Future<void> clearTokenPair() async {
    await flutterSecureStorage.delete(key: "access_token");
    await flutterSecureStorage.delete(key: "refresh_token");
  }

  Future<Map<String, dynamic>> buildHeaders() async {
    final tokenPair = await getTokenPair();

    return {
      'Authorization': 'Bearer ${tokenPair!.accessToken}',
    };
  }

  Future<void> saveTokenPair(TokenPair tokenPair) async {
    await flutterSecureStorage.write(
      key: 'accessToken',
      value: tokenPair.accessToken,
    );
    await flutterSecureStorage.write(
      key: 'refreshToken',
      value: tokenPair.refreshToken,
    );
  }
}
