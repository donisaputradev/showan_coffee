import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:showan_coffee/app/config.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/settings/settings.dart';
import 'package:path_provider/path_provider.dart';

// ignore_for_file: cascade_invocations
final getIt = GetIt.instance;
Future<void> setupLocator() async {
  await _setupCore();

  // |+-----------------------------------------------------------------------+|
  // |+                               FEATURES                                +|
  // |+-----------------------------------------------------------------------+|

  // ------------------------------ SETTINGS ---------------------------------

  // Data
  getIt
    ..registerLazySingleton<SettingsLocalDataSource>(
      () => SettingsLocalDataSourceImpl(getIt()),
    )
    ..registerLazySingleton<SettingsRepository>(
      () => SettingsRepositoryImpl(localDataSource: getIt()),
    );

  // Domain
  getIt
    ..registerLazySingleton(() => GetLanguageSettingUseCase(getIt()))
    ..registerLazySingleton(() => GetSettingsUseCase(getIt()))
    ..registerLazySingleton(() => GetThemeSettingUseCase(getIt()))
    ..registerLazySingleton(() => SaveLanguageSettingUseCase(getIt()))
    ..registerLazySingleton(() => SaveSettingsUseCase(getIt()))
    ..registerLazySingleton(() => SaveThemeSettingUseCase(getIt()))
    ..registerLazySingleton(GetSupportedLanguageUseCase.new)
    ..registerLazySingleton(RecordErrorUseCase.new)
    ..registerLazySingleton(GetOnboardingDataUseCase.new)
    ..registerLazySingleton(() => SetDoneOnboardingUseCase(getIt()))
    ..registerLazySingleton(() => GetOnboardingStatusUseCase(getIt()));

  // Presentation
  getIt
    ..registerFactory(
      () => LanguageBloc(
        getLanguageSetting: getIt(),
        saveLanguageSetting: getIt(),
        getSupportedLanguage: getIt(),
      ),
    )
    ..registerFactory(
      () => ThemeBloc(
        getThemeSetting: getIt(),
        saveThemeSetting: getIt(),
      ),
    )
    ..registerFactory(
      () => SplashBloc(),
    );

  // ------------------------------ END SETTINGS -------------------------------

  // |+-----------------------------------------------------------------------+|
  // |+                             END FEATURES                              +|
  // |+-----------------------------------------------------------------------+|
}

Future<void> _setupCore() async {
  EquatableConfig.stringify = AppConfig.autoStringifyEquatable;

  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.doubleBounce
    ..loadingStyle = EasyLoadingStyle.custom
    ..maskType = EasyLoadingMaskType.black
    ..radius = 16
    ..backgroundColor = AppColors.secondary[700]
    ..indicatorColor = AppColors.primary
    ..textColor = AppColors.primary
    ..userInteractions = true
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.opacity;

  // External
  getIt.registerLazySingleton(InternetConnectionChecker.new);
  getIt.registerLazySingleton(
    () => CaptureErrorUseCase(),
  );
  getIt.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(baseUrl: AppConfig.baseUrl.value)
      ..interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true),
      ),
  );

  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init('${appDocDir.path}/db');
  }

  getIt.registerLazySingleton<HiveInterface>(() => Hive);

  // Core
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt<InternetConnectionChecker>()),
  );
}
