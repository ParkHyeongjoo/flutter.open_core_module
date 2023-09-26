import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_core_module_platform_interface.dart';

/// An implementation of [OpenCoreModulePlatform] that uses method channels.
class MethodChannelOpenCoreModule extends OpenCoreModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_core_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
