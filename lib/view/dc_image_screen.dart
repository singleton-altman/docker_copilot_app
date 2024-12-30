import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/controller/dc_controller.dart';
import 'package:docker_copilot_app/model/dc_imgae_list_model.dart';

class DcImageScreen extends StatefulWidget {
  const DcImageScreen({super.key});

  @override
  State<DcImageScreen> createState() => _DcImageScreenState();
}

class _DcImageScreenState extends State<DcImageScreen> {
  final controller = Get.find<DcController>();
  @override
  void initState() {
    super.initState();
    controller.getImageList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, scroll) => [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('镜像列表'),
          )
        ],
        body: Obx(
          () => RefreshIndicator(
            onRefresh: () => controller.getContainers(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomScrollView(
                slivers: controller.imageList
                    .map(
                      (item) => SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Slidable(
                              key: Key(item.name),
                              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                    label: '删除',
                                    onPressed: (context) =>
                                        controller.deleteImage(item.id),
                                  ),
                                  SlidableAction(
                                    backgroundColor: Colors.green,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete_forever,
                                    label: '强制\n删除',
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    onPressed: (context) => controller
                                        .deleteImage(item.id, forcus: true),
                                  ),
                                ],
                              ),
                              child: _item(item),
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

  Widget _item(DcImgaeListModel item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
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
              Text(
                '[${item.inUsed ? '已使用' : '未使用'}]',
                style: TextStyle(
                    fontSize: 12,
                    color: item.inUsed ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'tag',
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
                  item.tag ?? '',
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
                'id',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                textAlign: TextAlign.right,
                item.id,
                style: const TextStyle(
                  fontSize: 14,
                ),
              )),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'size',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Expanded(
                  child: Text(
                textAlign: TextAlign.right,
                item.size,
                style: const TextStyle(
                  fontSize: 14,
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
