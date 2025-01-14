import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lib/flutter_lib.dart';
import 'package:flutter_lib/flutter_lib_platform_interface.dart';
import 'package:flutter_lib/flutter_lib_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterLibPlatform
    with MockPlatformInterfaceMixin
    implements FlutterLibPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterLibPlatform initialPlatform = FlutterLibPlatform.instance;

  test('$MethodChannelFlutterLib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterLib>());
  });

  test('getPlatformVersion', () async {
    FlutterLib flutterLibPlugin = FlutterLib();
    MockFlutterLibPlatform fakePlatform = MockFlutterLibPlatform();
    FlutterLibPlatform.instance = fakePlatform;

    expect(await flutterLibPlugin.getPlatformVersion(), '42');
  });
}
