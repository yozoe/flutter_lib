
import 'flutter_lib_platform_interface.dart';

class FlutterLib {
  Future<String?> getPlatformVersion() {
    return FlutterLibPlatform.instance.getPlatformVersion();
  }
}
