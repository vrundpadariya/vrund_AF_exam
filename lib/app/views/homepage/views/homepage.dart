import 'package:exam_af/app/uitiles/helper/databased.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/model.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prestige Bids"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            onChanged: (val) {
              controllerName = val;
            },
            controller: nameController,
            decoration: const InputDecoration(
              hintText: "Enter your Product name here",
              labelText: "Product name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            onChanged: (val) {
              controllerPrice = val;
            },
            controller: priceController,
            decoration: const InputDecoration(
              hintText: "Enter your Product Price here",
              labelText: "Product Price",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            onChanged: (val) {
              controllerCategory = val;
            },
            controller: categoryController,
            decoration: const InputDecoration(
              hintText: "Enter your Product category here",
              labelText: "Product category",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
              onTap: () {
                DBHelper.insertProduct(
                    name: "nameController",
                    category: "categoryController",
                    price: "priceController");
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                color: Colors.grey,
                child: Text("Submit"),
              )),
          Divider(),
          GetBuilder(builder: (_) {
            var proudct = DBHelper.fetchQuote();
            return Card(
              child: ListTile(
                title: Text(controllerName!),
                subtitle: Text(controllerPrice!),
              ),
            );
          }),
        ],
      ),
      // Column(
      //   children: [
      //     ListView.builder(itemBuilder: (context, index) {
      //       var product = DBHelper.fetchQuote();
      //       return Card(
      //           child: ListTile(
      //         leading: IconButton(
      //             onPressed: () {
      //               Get.toNamed('/auctions');
      //             },
      //             icon: Icon(Icons.arrow_forward_ios_rounded)),
      //         title: Text(controllerName!),
      //         subtitle: Text(controllerPrice!),
      //       ));
      //     }),
      //   ],
      //)
    );
  }
}
