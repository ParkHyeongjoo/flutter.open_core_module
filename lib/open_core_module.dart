
import 'open_core_module_platform_interface.dart';

class OpenCoreModule {
  Future<String?> getPlatformVersion() {
    return OpenCoreModulePlatform.instance.getPlatformVersion();
  }
}
