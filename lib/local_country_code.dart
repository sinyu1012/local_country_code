
import 'local_country_code_platform_interface.dart';

class LocalCountryCode {
  Future<String?> getPlatformVersion() {
    return LocalCountryCodePlatform.instance.getPlatformVersion();
  }
}
