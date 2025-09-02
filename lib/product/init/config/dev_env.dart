import 'package:envied/envied.dart';
import 'package:arch_v2/product/init/config/app_configuration.dart';

part 'dev_env.g.dart';

@Envied(obfuscate: true, path: 'asset/env/.dev.env')
final class DevEnv implements AppConfiguration {
  //  base url
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;
  //post Users
  @EnviedField(varName: 'POST_AUTH_LOGIN_DOMAIN')
  static final String _postAuthLoginDomain = _DevEnv._postAuthLoginDomain;
  //login
  @EnviedField(varName: 'GET_CUSTOMERS_DOMAIN')
  static final String _getCustomerDomain = _DevEnv._getCustomerDomain;
  @EnviedField(varName: 'GET_CUSTOMER_DETAIL_DOMAIN')
  static final String _getCustomerDetailDomain =
      _DevEnv._getCustomerDetailDomain;
  @EnviedField(varName: 'POST_CUSTOMERS_DOMAIN')
  static final String _postCustomerDomain = _DevEnv._postCustomerDomain;
  @EnviedField(varName: 'PATCH_CUSTOMERS_DOMAIN')
  static final String _patchCustomerDomain = _DevEnv._patchCustomerDomain;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get getCustomerDetailDomain => _getCustomerDetailDomain;

  @override
  String get getCustomersDomain => _getCustomerDomain;

  @override
  String get patchCustomersDomain => _patchCustomerDomain;

  @override
  String get postAuthLoginDomain => _postAuthLoginDomain;

  @override
  String get postCustomersDomain => _postCustomerDomain;
}
