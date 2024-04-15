import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/model.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Form(
              child: Column(
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
                      )),
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
                ],
              ),
            );
          },
        ),
        appBar: AppBar(
          title: const Text("Prestige Bids"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ListView.builder(itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                leading: IconButton(
                    onPressed: () {
                      Get.toNamed('/auctions');
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
                title: Text(controllerName!),
              ));
            }),
          ],
        ));
  }
}
