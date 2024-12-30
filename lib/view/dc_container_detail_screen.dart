import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/model/dc_container_list_model.dart';

import '../controller/dc_controller.dart';

class DcContainerDetailScreen extends StatefulWidget {
  const DcContainerDetailScreen({super.key});
  Map<String, dynamic>? get arguments => Get.arguments;
  @override
  State<DcContainerDetailScreen> createState() =>
      _DcContainerDetailScreenState();
}

class _DcContainerDetailScreenState extends State<DcContainerDetailScreen> {
  final controller = Get.find<DcController>();
  final nameController = TextEditingController();
  final imageNameController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();

  bool switchStatus = true;

  late DcContainerListModel container;
  @override
  void initState() {
    super.initState();
    container = widget.arguments!['model'];
    nameController.text = container.name;
    imageNameController.text = container.usingImage;
  }

  _doRename() async {
    if (nameController.text.isEmpty) {
      Get.snackbar('错误', '名称不能为空');
      return;
    }
    FocusScope.of(context).requestFocus(FocusNode());

    await controller.renameContainer(container.id, nameController.text);
    Get.snackbar('成功', '重命名成功');
    setState(() {
      container = container.copyWith(name: nameController.text);
    });
  }

  _doUpdate() async {
    if (imageNameController.text.isEmpty) {
      Get.snackbar('错误', '镜像名称不能为空');
      return;
    }
    if (nameController.text.isEmpty) {
      Get.snackbar('错误', '名称不能为空');
      return;
    }
    FocusScope.of(context).requestFocus(FocusNode());
    try {
      await controller.updateContainer(
        container.id,
        switchStatus,
        nameController.text,
        imageNameController.text,
      );
      Get.back();
      Get.snackbar(
        '${nameController.text}镜像更新任务创建成功',
        '前往查看',
        snackPosition: SnackPosition.BOTTOM,
        mainButton: TextButton(
          onPressed: () => Get.toNamed('/dc/update'),
          child: const Text('查看进度'),
        ),
      );
    } catch (e) {
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, scroll) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text(container.name),
            trailing: container.haveUpdate
                ? TextButton(
                    onPressed: _doUpdate,
                    child: const Text(
                      '更新容器',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                : TextButton(
                    onPressed: _doUpdate,
                    child: const Text(
                      '更新容器',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
          )
        ],
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(
                        height: 40,
                        child: CupertinoTextField(
                          controller: nameController,
                          placeholder: '名称',
                          focusNode: nameFocusNode,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                            boxShadow: [BoxShadow(color: Colors.transparent)],
                          ),
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: 40,
                        child: TextButton(
                          onPressed: _doRename,
                          child: const Text(
                            '重命名',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              const Text(
                                '当前镜像',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Text(
                                  container.usingImage,
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: CupertinoTextField(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0.0)),
                              boxShadow: [BoxShadow(color: Colors.transparent)],
                            ),
                            controller: imageNameController,
                            placeholder: '镜像名称',
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 40,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '删除旧容器',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Switch(
                                  value: switchStatus,
                                  onChanged: (v) {
                                    setState(() {
                                      switchStatus = !switchStatus;
                                    });
                                  },
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
          ],
        ),
      ),
    );
  }
}
