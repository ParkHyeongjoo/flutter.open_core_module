import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_core_module_method_channel.dart';

abstract class OpenCoreModulePlatform extends PlatformInterface {
  /// Constructs a OpenCoreModulePlatform.
  OpenCoreModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenCoreModulePlatform _instance = MethodChannelOpenCoreModule();

  /// The default instance of [OpenCoreModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenCoreModule].
  static OpenCoreModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenCoreModulePlatform] when
  /// they register themselves.
  static set instance(OpenCoreModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
