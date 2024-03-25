import 'package:flutter_test/flutter_test.dart';
import 'package:local_country_code/local_country_code.dart';
import 'package:local_country_code/local_country_code_platform_interface.dart';
import 'package:local_country_code/local_country_code_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLocalCountryCodePlatform
    with MockPlatformInterfaceMixin
    implements LocalCountryCodePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LocalCountryCodePlatform initialPlatform = LocalCountryCodePlatform.instance;

  test('$MethodChannelLocalCountryCode is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLocalCountryCode>());
  });

  test('getPlatformVersion', () async {
    LocalCountryCode localCountryCodePlugin = LocalCountryCode();
    MockLocalCountryCodePlatform fakePlatform = MockLocalCountryCodePlatform();
    LocalCountryCodePlatform.instance = fakePlatform;

    expect(await localCountryCodePlugin.getPlatformVersion(), '42');
  });
}
