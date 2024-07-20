import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart'; // For date formatting

class CustomListItem {
  final String key;
  final String title;
  final String subTitle;
  final String amount;
  final String time;
  final String category;

  CustomListItem({
    required this.key,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.time,
    required this.category,
  });
}

class MyController extends GetxController {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  var items = <CustomListItem>[].obs;
  var filteredItems = <CustomListItem>[].obs;
  var selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    super.onInit();
    fetchTitlesFromStorage();
  }

  Future<void> fetchTitlesFromStorage() async {
    try {
      items.clear();
      Map<String, String> allItems = await _secureStorage.readAll();
      allItems.forEach((key, value) async {
        if (!key.contains('_')) {
          String? subTitle = allItems["${key}_subTitle"];
          String? amount = allItems["${key}_amount"];
          String? time = allItems["${key}_time"];
          String? category = allItems["${key}_category"];
          if (subTitle != null && amount != null && time != null && category != null) {
            items.add(CustomListItem(
              key: key,
              title: value,
              subTitle: subTitle,
              amount: amount,
              time: time,
              category: category,
            ));
          }
        }
      });
      filterItemsByDate(selectedDate.value);
    } catch (e) {
      print('Error fetching titles: $e');
    }
  }

  void filterItemsByDate(DateTime date) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    filteredItems.value = items.where((item) {
      String itemDate = DateFormat('yyyy-MM-dd').format(DateTime.parse(item.time));
      return itemDate == formattedDate;
    }).toList();
  }

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
    filterItemsByDate(date);
  }
}

class GroupedItemsList extends StatelessWidget {
  final MyController _controller = Get.put(MyController());

   GroupedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grouped Items List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: _controller.selectedDate.value,
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null && pickedDate != _controller.selectedDate.value) {
                _controller.updateSelectedDate(pickedDate);
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          return ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: _controller.filteredItems.map((item) {
              return Card(
                color: Theme.of(context).cardColor,
                child: ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.subTitle),
                  trailing: Text('\u{20B9}${double.parse(item.amount).toStringAsFixed(2)}'),
                ),
              );
            }).toList(),
          );
        }),
      ),
    );
  }
}

// void main() {
//   runApp(
//     GetMaterialApp(
//       home: GroupedItemsList(),
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//         primaryColorLight: Colors.lightBlue[100],
//         primaryColorDark: Colors.blue[900],
//         accentColor: Colors.amber,
//       ),
//     ),
//   );
// }
