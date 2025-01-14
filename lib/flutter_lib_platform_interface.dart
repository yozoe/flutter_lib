import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_lib_method_channel.dart';

abstract class FlutterLibPlatform extends PlatformInterface {
  /// Constructs a FlutterLibPlatform.
  FlutterLibPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterLibPlatform _instance = MethodChannelFlutterLib();

  /// The default instance of [FlutterLibPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterLib].
  static FlutterLibPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterLibPlatform] when
  /// they register themselves.
  static set instance(FlutterLibPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
