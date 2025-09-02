import 'package:arch_v2/product/init/config/app_configuration.dart';
import 'package:arch_v2/product/init/config/dev_env.dart';

final class AppEnvironment {
  static late final AppConfiguration _config;

  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }
  AppEnvironment.general() {
    // _config = kDebugMode ? DevEnv() : ProdEnv();
    _config = DevEnv();
  }
}

enum AppEnvironmentItems {
  baseUrl,
  postAuthLoginDomain,
  getCustomerDomain,
  getCustomerDetailDomain,
  postCustomerDomain,
  patchCustomerDomain;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.postAuthLoginDomain:
          return AppEnvironment._config.postAuthLoginDomain;
        case AppEnvironmentItems.getCustomerDetailDomain:
          return AppEnvironment._config.getCustomerDetailDomain;
        case AppEnvironmentItems.getCustomerDomain:
          return AppEnvironment._config.getCustomersDomain;
        case AppEnvironmentItems.postCustomerDomain:
          return AppEnvironment._config.postCustomersDomain;
        case AppEnvironmentItems.patchCustomerDomain:
          return AppEnvironment._config.patchCustomersDomain;
      }
    } catch (e) {
      throw Exception('Environment variable is not found.');
    }
  }
}
