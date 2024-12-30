import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/controller/dc_controller.dart';
import 'package:docker_copilot_app/utils/logger.dart';

class DcMainScreen extends StatefulWidget {
  const DcMainScreen({super.key});

  @override
  State<DcMainScreen> createState() => _DcMainScreenState();
}

class _DcMainScreenState extends State<DcMainScreen> {
  final controller = Get.put(DcController());
  @override
  void initState() {
    super.initState();
    controller.start();
  }

  _gotoConfig() {
    Get.toNamed("/dc/config");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, scroll) => [
          CupertinoSliverNavigationBar(
            largeTitle: const Text('Docker Copilot'),
            trailing: TextButton(
              onPressed: _gotoConfig,
              child: const Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          )
        ],
        body: Obx(
          () {
            return controller.config.value == null
                ? Center(
                    child: TextButton(
                      onPressed: _gotoConfig,
                      child: const Text('前往配置'),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () => controller.getVersion(),
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: ListTile(
                            leading: const Icon(Icons.document_scanner),
                            title: const Text('容器'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                            onTap: () => Get.toNamed('/dc/container'),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: ListTile(
                            leading: const Icon(Icons.broken_image_rounded),
                            title: const Text('镜像'),
                            onTap: () => Get.toNamed('/dc/image'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: ListTile(
                            leading: const Icon(Icons.backup_rounded),
                            title: const Text('备份'),
                            onTap: () => Get.toNamed('/dc/backup'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Obx(
                            () => ListTile(
                              leading: const Icon(
                                Icons.tag_outlined,
                              ),
                              title:
                                  Text(controller.version.value?.version ?? ''),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
