import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'local_country_code_method_channel.dart';

abstract class LocalCountryCodePlatform extends PlatformInterface {
  /// Constructs a LocalCountryCodePlatform.
  LocalCountryCodePlatform() : super(token: _token);

  static final Object _token = Object();

  static LocalCountryCodePlatform _instance = MethodChannelLocalCountryCode();

  /// The default instance of [LocalCountryCodePlatform] to use.
  ///
  /// Defaults to [MethodChannelLocalCountryCode].
  static LocalCountryCodePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LocalCountryCodePlatform] when
  /// they register themselves.
  static set instance(LocalCountryCodePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
