import 'package:docker_copilot_app/controller/dc_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DcUpdateProgressScreen extends StatefulWidget {
  const DcUpdateProgressScreen({super.key});

  @override
  State<DcUpdateProgressScreen> createState() => _DcUpdateProgressScreenState();
}

class _DcUpdateProgressScreenState extends State<DcUpdateProgressScreen> {
  final controller = Get.put(DcController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '更新进度',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Obx(
        () {
          if (controller.updateTasks.isEmpty) {
            return const Center(
              child: Text('无更新任务'),
            );
          } else {
            return ListView.builder(
              itemCount: controller.updateTasks.length,
              itemBuilder: (context, index) {
                final task = controller.updateTasks[index];
                final error = task.isDone && task.progress < 100;
                return ListTile(
                  title: Text('${task.containerName}: ${task.content}'),
                  subtitle: LinearProgressIndicator(
                    value: task.progress / 100.0,
                    color: error ? Colors.red : Colors.green,
                  ),
                  trailing: Text(
                    '${(task.progress).toStringAsFixed(2)}%',
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
