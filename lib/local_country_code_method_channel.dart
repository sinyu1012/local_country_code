import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'local_country_code_platform_interface.dart';

/// An implementation of [LocalCountryCodePlatform] that uses method channels.
class MethodChannelLocalCountryCode extends LocalCountryCodePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('local_country_code');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
