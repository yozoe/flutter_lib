import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_lib_platform_interface.dart';

/// An implementation of [FlutterLibPlatform] that uses method channels.
class MethodChannelFlutterLib extends FlutterLibPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_lib');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
