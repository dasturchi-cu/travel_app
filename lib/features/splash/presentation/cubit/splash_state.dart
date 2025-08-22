part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.onborading() = _Onborading;
  const factory SplashState.auth() = _Auth;
  const factory SplashState.main() = _Main;
}
