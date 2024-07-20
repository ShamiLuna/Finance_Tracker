import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomList2Controller extends GetxController {
  var items = <CustomListItem>[].obs;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  void onInit() {
    super.onInit();
    // Fetch titles from secured storage
    fetchTitlesFromStorage();
  }

  Future<void> fetchTitlesFromStorage() async {
    try {
      // Fetch keys from secured storage
      List<String> keys = await _secureStorage.readAll().then((value) => value.keys.toList());
      // Iterate through keys and add titles to the list
      for (String key in keys) {
        String? title = await _secureStorage.read(key: key);
        if (title != null) {
          addItem(title: title);
        }
      }
    } catch (e) {
      print('Error fetching titles: $e');
    }
  }

  void addItem({required String title}) {
    items.add(CustomListItem(title: title));
  }

  Future<void> writeTitleToStorage(String title) async {
    // Generate a unique key for the title
    String key = DateTime.now().millisecondsSinceEpoch.toString();
    // Write the title to secured storage
    await _secureStorage.write(key: key, value: title);
    // Add the title to the list
    addItem(title: title);
  }
}

class CustomListItem {
  final String title;

  CustomListItem({required this.title});
}

class CustomListView extends StatelessWidget {
  final CustomList2Controller controller = Get.put(CustomList2Controller());
  final TextEditingController _titleController = TextEditingController();

  CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom ListView',style: TextStyle(fontFamily: 'Roboto'),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Title',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    String title = _titleController.text;
                    if (title.isNotEmpty) {
                      controller.writeTitleToStorage(title);
                      _titleController.clear();
                    }
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
                  () => ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  final item = controller.items[index];
                  return ListTile(
                    title: Text(item.title),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
