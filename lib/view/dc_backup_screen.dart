import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/controller/dc_controller.dart';

class DcBackupScreen extends StatefulWidget {
  const DcBackupScreen({super.key});

  @override
  State<DcBackupScreen> createState() => _DcBackupScreenState();
}

class _DcBackupScreenState extends State<DcBackupScreen> {
  final controller = Get.put(DcController());
  @override
  void initState() {
    super.initState();
    controller.getBackupList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, scroll) => [
          CupertinoSliverNavigationBar(
            largeTitle: const Text('备份'),
            trailing: TextButton(
              onPressed: () => controller.createBackup(),
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          )
        ],
        body: Obx(
          () => CustomScrollView(
            slivers: controller.backupList
                .map(
                  (item) => SliverToBoxAdapter(
                    key: Key(item),
                    child: Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                              label: '删除',
                              onPressed: (context) {
                                controller.deleteBackup(item);
                              },
                            ),
                            SlidableAction(
                                onPressed: (_) =>
                                    controller.restoreBackup(item),
                                icon: Icons.restore,
                                label: '恢复',
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                backgroundColor: Colors.blue)
                          ],
                        ),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                '备份名称',
                                style: TextStyle(fontSize: 16),
                              ),
                              Expanded(
                                child: Text(
                                  item,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        )),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
