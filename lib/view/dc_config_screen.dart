import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/controller/dc_controller.dart';

class DcConfigScreen extends StatefulWidget {
  const DcConfigScreen({super.key});

  @override
  State<DcConfigScreen> createState() => _DcConfigScreenState();
}

class _DcConfigScreenState extends State<DcConfigScreen> {
  final controller = Get.put(DcController());
  late final _hostController =
      TextEditingController(text: controller.config.value?.host);
  late final _securityKeyController =
      TextEditingController(text: controller.config.value?.securityKey);

  _done() async {
    if (_hostController.text.isEmpty) {
      Get.snackbar('错误', '服务器地址不能为空');
      return;
    }
    if (_securityKeyController.text.isEmpty) {
      Get.snackbar('错误', '安全密钥不能为空');
      return;
    }
    controller
        .auth(_hostController.text, _securityKeyController.text)
        .then((value) {
      Navigator.pop(context);
      controller.getVersion();
    });
  }

  bool isSecurityInput = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardDismissOnTap(
        child: NestedScrollView(
          headerSliverBuilder: (context, scroll) => [
            CupertinoSliverNavigationBar(
              largeTitle: const Text('设置'),
              trailing: TextButton(
                  onPressed: _done,
                  child: const Text(
                    '完成',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            )
          ],
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: CupertinoTextField(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      boxShadow: [BoxShadow(color: Colors.transparent)],
                    ),
                    placeholder: '服务器地址',
                    controller: _hostController,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: '秘钥',
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                            boxShadow: [BoxShadow(color: Colors.transparent)],
                          ),
                          controller: _securityKeyController,
                          style: const TextStyle(fontSize: 16),
                          obscureText: isSecurityInput,
                        ),
                      ),
                      TextButton(
                        child: Icon(isSecurityInput
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () => setState(() {
                          isSecurityInput = !isSecurityInput;
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
