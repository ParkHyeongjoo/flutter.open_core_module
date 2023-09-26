import 'package:flutter_test/flutter_test.dart';
import 'package:open_core_module/open_core_module.dart';
import 'package:open_core_module/open_core_module_platform_interface.dart';
import 'package:open_core_module/open_core_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenCoreModulePlatform
    with MockPlatformInterfaceMixin
    implements OpenCoreModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenCoreModulePlatform initialPlatform = OpenCoreModulePlatform.instance;

  test('$MethodChannelOpenCoreModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenCoreModule>());
  });

  test('getPlatformVersion', () async {
    OpenCoreModule openCoreModulePlugin = OpenCoreModule();
    MockOpenCoreModulePlatform fakePlatform = MockOpenCoreModulePlatform();
    OpenCoreModulePlatform.instance = fakePlatform;

    expect(await openCoreModulePlugin.getPlatformVersion(), '42');
  });
}
