import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/controller/dc_controller.dart';
import 'package:docker_copilot_app/model/dc_container_list_model.dart';

class DcContainerScreen extends StatefulWidget {
  const DcContainerScreen({super.key});

  @override
  State<DcContainerScreen> createState() => _DcContainerScreenState();
}

class _DcContainerScreenState extends State<DcContainerScreen> {
  final controller = Get.find<DcController>();
  @override
  void initState() {
    super.initState();
    controller.getContainers();
  }

  Widget _item(DcContainerListModel item) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: 10,
                      height: 10,
                      color:
                          item.status == 'running' ? Colors.green : Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      item.name,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (item.haveUpdate)
                    const Text(
                      '[更新]',
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '镜像',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.right,
                      item.usingImage,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '创建时间',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.right,
                      item.createTime,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '运行时长',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    textAlign: TextAlign.right,
                    item.runningTime,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Colors.grey,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, scroll) => [
          CupertinoSliverNavigationBar(
            largeTitle: const Text('容器列表'),
            trailing: TextButton(
              onPressed: () => Get.toNamed('dc/update'),
              child: const Text(
                '更新进度',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
        body: Obx(
          () => RefreshIndicator(
            onRefresh: () => controller.getContainers(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomScrollView(
                slivers: controller.containers
                    .map(
                      (item) => SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Slidable(
                              useTextDirection: true,
                              key: Key(item.name),
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                    icon: Icons.stop,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                    // label: '停止',
                                    onPressed: (context) =>
                                        controller.stopContainer(item.id),
                                  ),
                                  SlidableAction(
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.white,
                                    icon: Icons.play_arrow,
                                    // label: '启动',
                                    onPressed: (context) =>
                                        controller.startContainer(item.id),
                                  ),
                                  SlidableAction(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                    icon: Icons.restart_alt,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    // label: '重启',
                                    onPressed: (context) =>
                                        controller.restartContainer(item.id),
                                  ),
                                ],
                              ),
                              child: InkWell(
                                child: _item(item),
                                onTap: () => Get.toNamed(
                                  "/dc/container/detail",
                                  arguments: {'model': item},
                                ),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
