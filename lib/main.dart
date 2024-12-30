import 'package:docker_copilot_app/view/dc_backup_screen.dart';
import 'package:docker_copilot_app/view/dc_config_screen.dart';
import 'package:docker_copilot_app/view/dc_container_detail_screen.dart';
import 'package:docker_copilot_app/view/dc_container_screen.dart';
import 'package:docker_copilot_app/view/dc_image_screen.dart';
import 'package:docker_copilot_app/view/dc_main_screen.dart';
import 'package:docker_copilot_app/view/dc_update_progress_screen.dart';
import 'package:docker_copilot_app/view/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

final routes = [
  GetPage(name: '/', page: () => const Welcome()),
  // dc
  GetPage(name: '/dc/main', page: () => const DcMainScreen()),
  GetPage(name: '/dc/container', page: () => const DcContainerScreen()),
  GetPage(
    name: '/dc/container/detail',
    page: () => const DcContainerDetailScreen(),
  ),
  GetPage(name: '/dc/image', page: () => const DcImageScreen()),
  GetPage(name: '/dc/config', page: () => const DcConfigScreen()),
  GetPage(name: '/dc/backup', page: () => const DcBackupScreen()),
  GetPage(name: '/dc/update', page: () => const DcUpdateProgressScreen()),
];

setupHiveBox() async {
  final path = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(path.path);
  await Hive.openBox('appPrefrences');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupHiveBox();
  runApp(GetMaterialApp(
    title: 'Docker Copilot',
    getPages: routes,
    // theme: ThemeData.light(useMaterial3: true),
    // darkTheme: ThemeData.dark(useMaterial3: true),
    home: const DcMainScreen(),
    builder: EasyLoading.init(),
  ));
}
